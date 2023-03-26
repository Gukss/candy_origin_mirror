package com.project.candy.statistics.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

/**
 * packageName    : com.project.candy.statistics.dto
 * fileName       : PercentRank
 * author         : dongk
 * date           : 2023-03-26
 * description    :
 * ===========================================================
 * DATE              AUTHOR             NOTE
 * -----------------------------------------------------------
 * 2023-03-26        dongk       최초 생성
 */
@Getter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class PercentRank {
  private long userId;

  private double percent;

  private long count;

  public static PercentRank createPercentRank(long userId, double percent, long count){
    return PercentRank.builder()
            .userId(userId)
            .percent(percent)
            .count(count)
            .build();
  }
}
