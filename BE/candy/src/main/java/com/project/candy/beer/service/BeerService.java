package com.project.candy.beer.service;

import com.project.candy.beer.dto.ReadBeerDetailResponse;
import com.project.candy.beer.dto.ReadBeerListResponse;
import com.project.candy.beer.dto.ReadSearchBeerListResponse;
import java.util.List;

/**
 * packageName    : com.project.candy.beer.service
 * fileName       : BeerService
 * date           : 2023-03-20
 * description    : BeerService
 */
public interface BeerService {

  /**
   * desc : 맥주 상세 조회
   *
   * @param beerId
   * @param userEmail
   * @return
   */
  ReadBeerDetailResponse readBeerDetail(Long beerId, String userEmail);

  /**
   * desc : 맥주 리스트 조회 (도감용)
   * @return 모든 맥주 리스트 리턴 (단, 마신건지, 찜한건지 변수 필요)
   */
  List<ReadBeerListResponse> readAllBeerList(String userEmail);

  /**
   * 맥주 이름으로 검색했을 경우 해당 이름이 포함되는 맥주 리스트를 반환
   * @param beerName : 맥주 이름 (영어 또는 한글)
   * @return
   */
  List<ReadSearchBeerListResponse> readAllSearchBeerList(String beerName);

  /**
   * 바코드로 맥주를 검색했을 경우 바코드에 해당하는 맥주의 상세정보를 출력한다.
   * @param barcode
   * @param userEmail
   * @return
   */
  ReadBeerDetailResponse readBeerDetailByBarcode(String barcode, String userEmail);

  /**
   * 맥주 상세보기에 활용되는 메소드.
   * Scheduling 메소드로 맛, 바디감 등등의 상세정보 업데이트에 활용된다.
   * (테이블 정보만 수정하는 메소드이기에 매개변수와 리턴 값이 없다.)
   */
  void updateBeer();
}