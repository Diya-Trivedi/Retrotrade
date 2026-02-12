package com.grownited.repository;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.grownited.entity.ListingEntity;

@Repository
public interface ListingRepository extends JpaRepository<ListingEntity, Integer> {

    
}

