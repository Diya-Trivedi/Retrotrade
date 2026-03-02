package com.grownited.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.GetMapping;

import com.grownited.repository.OfferRepository;

@Controller
public class OfferController {
	
	@Autowired
	OfferRepository offerRepository;
	
	@GetMapping("newOffer")
	public String newOffer() {
		return "NewOffer";
	}

}
