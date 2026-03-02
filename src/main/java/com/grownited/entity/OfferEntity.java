package com.grownited.entity;

import java.math.BigDecimal;
import java.time.LocalDate;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "offer")
public class OfferEntity {

	 @Id
	 @GeneratedValue(strategy = GenerationType.IDENTITY)   
	 private Integer offer_id;
	 private Integer listing_id;   
	 private Integer buyer_id;
	 private BigDecimal offered_price;   
	 private String offer_status;
	 private LocalDate created_at;
	 public Integer getOffer_id() {
		 return offer_id;
	 }
	 public void setOffer_id(Integer offer_id) {
		 this.offer_id = offer_id;
	 }
	 public Integer getListing_id() {
		 return listing_id;
	 }
	 public void setListing_id(Integer listing_id) {
		 this.listing_id = listing_id;
	 }
	 public Integer getBuyer_id() {
		 return buyer_id;
	 }
	 public void setBuyer_id(Integer buyer_id) {
		 this.buyer_id = buyer_id;
	 }
	 public BigDecimal getOffered_price() {
		 return offered_price;
	 }
	 public void setOffered_price(BigDecimal offered_price) {
		 this.offered_price = offered_price;
	 }
	 public String getOffer_status() {
		 return offer_status;
	 }
	 public void setOffer_status(String offer_status) {
		 this.offer_status = offer_status;
	 }
	 public LocalDate getCreated_at() {
		 return created_at;
	 }
	 public void setCreated_at(LocalDate created_at) {
		 this.created_at = created_at;
	 }
}
	 
