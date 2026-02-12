package com.grownited.entity;

import java.math.BigDecimal;
import java.time.LocalDate;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "transactions")
public class TransactionsEntity {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer transaction_id;
	private Integer listing_id;
	private Integer buyer_id;
	private Integer seller_id;
	private BigDecimal final_price;
	private String payment_mode;
	private String  transaction_status;
	private LocalDate completed_at;
	
	
	public Integer getTransaction_id() {
		return transaction_id;
	}
	public void setTransaction_id(Integer transaction_id) {
		this.transaction_id = transaction_id;
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
	public Integer getSeller_id() {
		return seller_id;
	}
	public void setSeller_id(Integer seller_id) {
		this.seller_id = seller_id;
	}
	public BigDecimal getFinal_price() {
		return final_price;
	}
	public void setFinal_price(BigDecimal final_price) {
		this.final_price = final_price;
	}
	public String getPayment_mode() {
		return payment_mode;
	}
	public void setPayment_mode(String payment_mode) {
		this.payment_mode = payment_mode;
	}
	public String getTransaction_status() {
		return transaction_status;
	}
	public void setTransaction_status(String transaction_status) {
		this.transaction_status = transaction_status;
	}
	public LocalDate getCompleted_at() {
		return completed_at;
	}
	public void setCompleted_at(LocalDate completed_at) {
		this.completed_at = completed_at;
	}
	
}	
	
	



