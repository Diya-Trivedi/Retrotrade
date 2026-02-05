package com.grownited.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.grownited.entity.ListingEntity;
import com.grownited.repository.CategoryRepository;
import com.grownited.repository.ListingRepository;
import com.grownited.repository.SubCategoryRepository;



@Controller
public class ListingController {

    @Autowired
    CategoryRepository categoryRepo;

    @Autowired
    SubCategoryRepository subCategoryRepo;

    @Autowired
    ListingRepository listingRepo;

    @GetMapping("/addlisting")
    public String addListing(Model model) {
        model.addAttribute("categories", categoryRepo.findAll());
        model.addAttribute("subcategories", subCategoryRepo.findAll());
        return "AddListing";
    }

    @PostMapping("/savelisting")
    public String saveListing(
            ListingEntity listing,
            @RequestParam Integer categoryId,
            @RequestParam Integer subCategoryId) {

        listing.setCategory(categoryRepo.findById(categoryId).get());
        listing.setSubCategory(subCategoryRepo.findById(subCategoryId).get());
        listing.setStatus("active");

        listingRepo.save(listing);
        return "redirect:/dashboard";
    }

    @GetMapping("/dashboard")
    public String dashboard(Model model) {
        model.addAttribute("listings",
                listingRepo.findByStatus("active"));
        return "Dashboard";
    }

    @GetMapping("/viewlisting")
    public String viewListing(@RequestParam Integer id, Model model) {
        model.addAttribute("listing",
                listingRepo.findById(id).get());
        return "ViewListing";
    }
}
