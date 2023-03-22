package com.project.candy.like.repository;

import com.project.candy.like.entity.Like;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.Optional;

/**
 * packageName    : com.project.candy.like.repository
 * fileName       : LikeRepository
 * date           : 2023-03-21
 * description    :
 */
public interface LikeRepository extends JpaRepository<Like, Long> {

  @Query(nativeQuery = true, value = "select * from like where like.beer_id = :beerId and like.user_id = :userId")
  Optional<Like> readLikeSelectedByUser(Long beerId, long userId);
}
