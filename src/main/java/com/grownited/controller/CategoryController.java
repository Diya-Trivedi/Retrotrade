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


//JPA -> specification  

@Controller
public class CategoryController {

	@Autowired // inject 
	CategoryRepository categoryRepository; 
	
	@GetMapping("newCategory")
	public String newCategory() {
		return "NewCategory";
	}

	@PostMapping("saveCategory")
	public String saveCategory(CategoryEntity categoryEntity,ListingEntity listingEntity,SubCategoryEntity subCategoryEntity) {  

		categoryEntity.setActive(true);
		subCategoryEntity.setCategoryId(categoryEntity.getCategoryId());
	    listingEntity.setCategoryId(categoryEntity.getCategoryId());
	   
		//insert 
		categoryRepository.save(categoryEntity); 
		return "AdminDashboard";
	}
	
	@GetMapping("listCategory")
	public String listCategory(Model model) {
		//select * from categories ; 
		//1
		//2
		//3
		//4
		//List<Entity> 
		List<CategoryEntity> categoryList = categoryRepository.findAll();
		model.addAttribute("categoryList",categoryList);//
		
		return "ListCategory";
	}


    @GetMapping("deleteCategory")
    public String deleteCategory(Integer categoryId){
		
		categoryRepository.deleteById(categoryId);
	    return "redirect:/listCategory";
    }
}