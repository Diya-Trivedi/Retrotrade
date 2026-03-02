package com.grownited.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.CategoryEntity;
import com.grownited.entity.ListingEntity;
import com.grownited.entity.SubCategoryEntity;
import com.grownited.repository.CategoryRepository;
import com.grownited.repository.SubCategoryRepository;



@Controller
public class SubCategoryController {

    
    @Autowired
    SubCategoryRepository subCategoryRepository;
    
    @Autowired
    CategoryRepository categoryRepository;

    @GetMapping("newSubCategory")
    public String newSubCategory(Model model) {
    	List<CategoryEntity> categoryList = categoryRepository.findAll();
		model.addAttribute("categoryList", categoryList);
    	
        return "NewSubCategory";
    }

    @PostMapping("saveSubCategory")
    public String saveSubCategory(SubCategoryEntity subCategoryEntity,CategoryEntity categoryEntity){ 
   
		
    	subCategoryEntity.setCategoryId(categoryEntity.getCategoryId());
    	subCategoryEntity.setActive(true);
    	subCategoryRepository.save(subCategoryEntity);
        return "redirect:/listSubCategory";
    }
 

    @GetMapping("listSubCategory")
	public String listSubCategory(Model model) {
    	//select * from categories ; 
    	//1
    	//2
    	//3
    	//4
    	//List<Entity> 
    	List<SubCategoryEntity> subcategoryList = subCategoryRepository.findAll();
    	model.addAttribute("subCategoryList", subcategoryList);
        return "ListSubCategory";
    	}
    
    @GetMapping("deleteSubCategory")
    public String deleteSubCategory(Integer subcategoryId){
		
    	subCategoryRepository.deleteById(subcategoryId);
	    return "redirect:/listSubCategory";
    			
    }
}


