package com.grownited.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.grownited.entity.OfferEntity;

public interface OfferRepository extends JpaRepository<OfferEntity, Integer>{ 

}
