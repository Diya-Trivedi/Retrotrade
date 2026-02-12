package com.grownited.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "listing_image")
public class ListingImageEntity {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer listing_image_id;
	private Integer listingId;
	private String imageURL;
	private Boolean is_primary;
	public Integer getListing_image_id() {
		return listing_image_id;
	}
	public void setListing_image_id(Integer listing_image_id) {
		this.listing_image_id = listing_image_id;
	}
	public Integer getListingId() {
		return listingId;
	}
	public void setListingId(Integer listingId) {
		this.listingId = listingId;
	}
	public String getImageURL() {
		return imageURL;
	}
	public void setImageURL(String imageURL) {
		this.imageURL = imageURL;
	}
	public Boolean getIs_primary() {
		return is_primary;
	}
	public void setIs_primary(Boolean is_primary) {
		this.is_primary = is_primary;
	}
	
}
