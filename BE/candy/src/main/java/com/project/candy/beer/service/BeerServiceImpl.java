package com.project.candy.beer.service;

import com.project.candy.beer.dto.ReadBeerAvgFromReviewResponse;
import com.project.candy.beer.dto.ReadBeerDetailResponse;
import com.project.candy.beer.dto.ReadBeerListResponse;
import com.project.candy.beer.dto.ReadSearchBeerListResponse;
import com.project.candy.beer.entity.Beer;
import com.project.candy.beer.repository.BeerRepository;
import com.project.candy.calendar.entity.Calendar;
import com.project.candy.calendar.repository.CalendarRepository;
import com.project.candy.country.dto.ReadCountryResponse;
import com.project.candy.country.entity.Country;
import com.project.candy.country.repository.CountryRepository;
import com.project.candy.exception.exceptionMessage.NotFoundExceptionMessage;
import com.project.candy.likes.entity.Likes;
import com.project.candy.likes.repository.LikesRepository;
import com.project.candy.review.entity.Review;
import com.project.candy.review.repository.ReviewRepository;
import com.project.candy.user.entity.User;
import com.project.candy.user.repository.UserRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ParameterizedPreparedStatementSetter;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;

/**
 * packageName    : com.project.candy.beer.service
 * fileName       : BeerServiceImpl
 * date           : 2023-03-20
 * description    :
 */
@Service
@Transactional(readOnly = true)
@RequiredArgsConstructor
@Slf4j
public class BeerServiceImpl implements BeerService {

  private final BeerRepository beerRepository;
  private final UserRepository userRepository;
  private final CountryRepository countryRepository;
  private final CalendarRepository calendarRepository;
  private final LikesRepository likeRepository;
  private final ReviewRepository reviewRepository;
  private final JdbcTemplate jdbcTemplate;

  @Override
  public ReadBeerDetailResponse readBeerDetail(Long beerId, String userEmail) {
    // 상세 정보에 들어갈 맥주 정보
    Beer beer = beerRepository.findById(beerId).orElseThrow(() -> new NotFoundExceptionMessage());
    // 상세 정보에 들어갈 나라 정보 (한글/영문 이름, 이미지 url)
    //todo: 예외 메시지 바꾸기
    Country foundCountry = countryRepository.findById(beer.getCountry().getId()).orElseThrow(() -> new NotFoundExceptionMessage(NotFoundExceptionMessage.NOT_FOUND_BEER));
    ReadCountryResponse readCountryResponse = ReadCountryResponse.entityToDTO(foundCountry);
    // 위 두 정보를 리턴 DTO에 넣어준다.
    ReadBeerDetailResponse readBeerDetailResponse = ReadBeerDetailResponse.EntityToDTO(beer, readCountryResponse);

    // 현재 요청을 보낸 사용자가 해당 맥주를 마셨는지, 찜했는지 판단하기 위해 사용자 정보를 불러온다.
    User user = userRepository.findByEmail(userEmail).orElseThrow(() -> new NotFoundExceptionMessage());

    boolean isDrink = false;
    boolean isLike = false;

    // 마셨는지, 찜한 맥주인지 체크한다.
    List<Calendar> calendarList = calendarRepository.findByUserId(user.getId()).get();
    if (calendarList != null) {
      isDrink = true;
    }
    log.info(String.valueOf(user.getId()));
    log.info(String.valueOf(beer.getId()));
    Likes likes = likeRepository.readByUserAndBeerAndIsDeleteFalse(user.getId(), beer.getId());
    if (likes != null) {
      isLike = true;
    }

    // 마셨는지, 찜했는지에 대한 변수 업데이트
    readBeerDetailResponse.setDrinkAndLike(isDrink, isLike);

    return readBeerDetailResponse;
  }

  @Override
  public List<ReadBeerListResponse> readAllBeerList(String userEmail) {

    User user = userRepository.findByEmail(userEmail).orElseThrow(() -> new NotFoundExceptionMessage());
    List<ReadBeerListResponse> beerList = beerRepository.readAllBeerList(user.getId());

    return beerList;
  }

  @Override
  public List<ReadSearchBeerListResponse> readAllSearchBeerList(String beerName) {

    boolean isKorean = Pattern.matches("^[ㄱ-ㅎ가-힣]*$", beerName);
    List<Beer> beerList = new ArrayList<>();
    if (isKorean) {
      beerList = beerRepository.findAllByBeerKrNameContaining(beerName);
    } //
    else {
      beerList = beerRepository.findAllByBeerEnNameContaining(beerName);
    }

    List<ReadSearchBeerListResponse> resBeerList = new ArrayList<>();
    for (Beer beer : beerList) {
      resBeerList.add(new ReadSearchBeerListResponse(
              beer.getId(), beer.getBeerKrName(), beer.getBeerEnName(), beer.getBeerImage()));
    }

    return resBeerList;
  }

  @Override
  public ReadBeerDetailResponse readBeerDetailByBarcode(String barcode, String userEmail) {

    Beer beer = beerRepository.findByBarcode(barcode).orElseThrow(
            () -> new NotFoundExceptionMessage(NotFoundExceptionMessage.NOT_FOUND_BEER));

    ReadBeerDetailResponse resBeerDetail = readBeerDetail(beer.getId(), userEmail);

    return resBeerDetail;
  }

  @Override
  @Scheduled(cron = "0 0 4 1/1 * *")
  @Transactional
  public void updateBeer() {

    // 1. 리뷰 테이블 row를 모두 가져온다.
    // 1-1. 단 삭제되지 않은 정보만 가져와야 한다.
    // 2. 모든 리뷰에서 연산할 값들을 연산해준다. -> roll up 쿼리로 해결
    // 3. JDBC Batch를 이용해 db에 한번에 업데이트 해준다.

    List<Review> reviewList = reviewRepository.readAllIsDeleteFalse();
    if (reviewList != null && !reviewList.isEmpty()) {

      List<ReadBeerAvgFromReviewResponse> beerAvgList = beerRepository.readAllBeerAvgList();
      if (beerAvgList != null && !beerAvgList.isEmpty()) {
        batchUpdate(beerAvgList);
      }
    }
  }

  /**
   * updateBeer() 메소드에서 배치 처리를 위해 호출하는 메소드
   * @param beerAvgList
   */
  public void batchUpdate(List<ReadBeerAvgFromReviewResponse> beerAvgList) {
    for (ReadBeerAvgFromReviewResponse res: beerAvgList) {
      System.out.println(res.getBeer_id() + " " + res.getAppearanceAvg() + " " + res.getAromaAvg() + " " + res.getFlavorAvg() + " " + res.getMouthfeelAvg() + " " + res.getOverallAvg());
    }
    jdbcTemplate.batchUpdate("update test set " +
                    "test.aroma = ?, test.flavor = ?, test.mouthfeel = ?, " +
                    "test.appearance = ?, test.overall = ? where test.beer_id = ?",
            beerAvgList,
            beerAvgList.size(),
            new ParameterizedPreparedStatementSetter<ReadBeerAvgFromReviewResponse>() {
              @Override
              public void setValues(PreparedStatement ps, ReadBeerAvgFromReviewResponse beerAvg) throws SQLException {
                ps.setDouble(1, beerAvg.getAromaAvg());
                ps.setDouble(2, beerAvg.getFlavorAvg());
                ps.setDouble(3, beerAvg.getMouthfeelAvg());
                ps.setDouble(4, beerAvg.getAppearanceAvg());
                ps.setDouble(5, beerAvg.getOverallAvg());
                ps.setLong(6, beerAvg.getBeer_id());
              }
            });
  }
}
