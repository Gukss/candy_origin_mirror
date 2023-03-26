package com.project.candy.statistics.repository;

import com.project.candy.statistics.dto.PercentRank;
import com.project.candy.statistics.entity.Statistics;
import com.project.candy.user.entity.User;

import java.time.LocalDate;
import java.util.List;
import java.util.Optional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

/**
 * packageName    : com.project.candy.statistics.repository fileName       : statisticsRepository
 * date           : 2023-03-23 description    :
 */
public interface StatisticsRepository extends JpaRepository<Statistics, Long> {
   Optional<Statistics> findByUser(User user);

   @Query(nativeQuery = true, value = "select sum(target.count) sum" +
           "from (select *" +
           "      from beer_history b" +
           "      where user_id = :user_id" +
           ") target")
   int readTotalCountByUserEmail(@Param("user_id") long userId);

   @Query(nativeQuery = true, value = "select distinct(date_format(c.created_at, '%Y-%m-%d')) date" +
           "from calendar c" +
           "where user_id = :user_id" +
           "order by date desc")
   List<LocalDate> readCalendar(@Param("user_id") long userId);

   @Query(nativeQuery = true, value = "select b.user_id" +
           "     , 100-percent_rank() over(order by sum(b.count))*100 percent, sum(b.count) count" +
           "from beer_history b" +
           "group by b.user_id")
   List<PercentRank> readPercentRank();
}
