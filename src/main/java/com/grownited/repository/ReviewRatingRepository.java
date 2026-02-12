package com.grownited.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.grownited.entity.ReviewRatingEntity;

public interface ReviewRatingRepository extends JpaRepository<ReviewRatingEntity, Integer> {

}
