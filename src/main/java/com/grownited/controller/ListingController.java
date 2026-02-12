package com.grownited.controller;
import com.grownited.repository.CategoryRepository;
import com.grownited.repository.ListingRepository;
import com.grownited.repository.SubCategoryRepository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.CategoryEntity;
import com.grownited.entity.ListingEntity;
import com.grownited.entity.SubCategoryEntity;


@Controller
public class ListingController {
	
	@Autowired
	ListingRepository listingRepository;
	
	@Autowired
	CategoryRepository categoryRepository;
	
	@Autowired
	SubCategoryRepository subCategoryRepository;

	
	@GetMapping("newListing")
	public String newListing(Model model) {
		List<CategoryEntity> categoryList = categoryRepository.findAll();
		model.addAttribute("categoryList", categoryList);
		
		List<SubCategoryEntity> subCategoryList = subCategoryRepository.findAll();
		model.addAttribute("subCategoryList", subCategoryList);
        return "NewListing";
	}
    
	@PostMapping("saveListing")
	public String saveListing(ListingEntity listingEntity) {
		
		listingRepository.save(listingEntity);
		return "AdminDashboard";
	}
	
}
