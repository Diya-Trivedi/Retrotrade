package com.grownited.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.grownited.entity.TransactionsEntity;

public interface TransactionsRepository extends JpaRepository<TransactionsEntity, Integer>  {

}
