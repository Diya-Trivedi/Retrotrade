package com.grownited.controller;
import com.grownited.repository.CategoryRepository;
import com.grownited.repository.ListingRepository;
import com.grownited.repository.SubCategoryRepository;

import jakarta.servlet.http.HttpSession;

import java.time.LocalDate;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.CategoryEntity;
import com.grownited.entity.ListingEntity;
import com.grownited.entity.SubCategoryEntity;
import com.grownited.entity.UserEntity;


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
	public String saveListing(ListingEntity listingEntity,HttpSession session) {
		 //listingEntity.setSubcategoryId(subCategoryEntity.getSubcategoryId());
		// 🔐 Check Session
	    UserEntity user = (UserEntity) session.getAttribute("user");

	    if (user == null) {
	        return "redirect:/login";
	    }

	 // ✅ Set sellerId from logged in user
	    listingEntity.setSellerId(user.getUserId());

	    // ✅ Set created date
	    listingEntity.setCreated_at(LocalDate.now());

	    // ✅ Save listing
	    listingRepository.save(listingEntity);
		return "redirect:/listListing";
	}
	
	@GetMapping("listListing")
	public String listListing(Model model) {

		List<ListingEntity> listingList = listingRepository.findAll();
	    List<CategoryEntity> categoryList = categoryRepository.findAll();
	    List<SubCategoryEntity> subCategoryList = subCategoryRepository.findAll();

	    model.addAttribute("listingList", listingList);
	    model.addAttribute("categoryList", categoryList);
	    model.addAttribute("subCategoryList", subCategoryList);

	    return "ListListing";
	}
	
	@GetMapping("viewListing")
	public String viewListing(Integer listingId, Model model){

	    Optional<ListingEntity> opListing = listingRepository.findById(listingId);

	    if(opListing.isPresent()){
	        model.addAttribute("listing", opListing.get());
	        model.addAttribute("categoryList", categoryRepository.findAll());
	        model.addAttribute("subCategoryList", subCategoryRepository.findAll());
	        return "ViewListing";
	    }else{
	        return "redirect:/listListing";
	    }
	}
	
	@GetMapping("deleteListing")
    public String deleteListing(Integer listingId){
		
		listingRepository.deleteById(listingId);
	    return "redirect:/listListing";
	}
	
}
