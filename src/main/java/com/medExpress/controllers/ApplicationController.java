package com.medExpress.controllers;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.medExpress.model.MainCategoryModel;
import com.medExpress.service.MainCategoryService;
import com.medExpress.service.PageDetailsService;
import com.medExpress.service.SubCategoryService;

@Controller
public class ApplicationController {

	@Autowired
	MainCategoryService mainCatService;
	
	@Autowired
	SubCategoryService subCatService;
	
	@Autowired
	PageDetailsService pageDetailsService;
	
	@RequestMapping(value={"/","Home"})
	public ModelAndView homePage()
	{ 
		ModelAndView model=new ModelAndView();
		List<MainCategoryModel> mainCategories=mainCatService.getMainCategoryList();
		ArrayList al=new ArrayList();
		model.addObject("mainCategoryList",mainCategories);
		int i=0;
		while(i<mainCategories.size())
		{
			al.add(subCatService.getSubCategoryList(mainCategories.get(i).getId()));
			i++;
		}
		model.addObject("subCategoryList",al);
		model.addObject("HOME",pageDetailsService.getPageDetails("HOME"));
		model.addObject("HomePopularCategory",subCatService.getSubCategories(pageDetailsService.getValueForName("HOME_POPULAR_CATEGORIES")));
		model.addObject("HomeSpecialOfferSubCategory",subCatService.getSubCategories(pageDetailsService.getValueForName("HOME_SPECIAL_OFFER_SUBCATEGORY")));
		model.addObject("HomeCategories",subCatService.getSubCategories(pageDetailsService.getValueForName("HOME_SUBCATEGORIES")));
		model.addObject("showHome", true);
		model.setViewName("main");
		return model;
	}
}
