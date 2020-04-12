package com.medExpress.controllers;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.medExpress.model.MainCategoryModel;
import com.medExpress.model.ProductsModel;
import com.medExpress.service.ExtraCategoriesService;
import com.medExpress.service.MainCategoryService;
import com.medExpress.service.ProductsService;
import com.medExpress.service.SubCategoryService;

@Controller
@RequestMapping("/Category")
public class CategoryController {

	@Autowired
	SubCategoryService subCatService;
	
	@Autowired
	MainCategoryService mainCatService;

	@Autowired
	ProductsService productService;
	
	@Autowired
	ExtraCategoriesService extraCatService;
	
	@RequestMapping("/{pageName}/{categoyId}/popularity")
	@ResponseBody
	public void popularity(@RequestBody int id)
	{
		productService.getPopularityProducts(id);
	}
	
	@RequestMapping("/{pageName}/{categoyId}/a-z")
	@ResponseBody
	public void aTOz(@RequestBody int id)
	{
		productService.getAtoZProducts(id);
	}
	
	@RequestMapping("/{pageName}/{categoyId}/z-a")
	@ResponseBody
	public void zTOa(@RequestBody int id)
	{
		productService.getZtoAProducts(id);
	}
	
	@RequestMapping("/{pageName}/{categoyId}/discount")
	@ResponseBody
	public void discount(@RequestBody int id)
	{
		productService.getDiscountProducts(id);
	}
	
	@RequestMapping("/{pageName}/{categoyId}/LowToHigh")
	@ResponseBody
	public void priceLowToHigh(@RequestBody int id)
	{
		productService.getLowToHighProducts(id);
	}
	
	@RequestMapping("/{pageName}/{categoyId}/HighToLow")
	@ResponseBody
	public void priceHighToLow(@RequestBody int id)
	{
		productService.getHighToLowProducts(id);
	}
	
	@RequestMapping("/{pageName}/{categoyId}")
	public ModelAndView showCategoryProducts(@PathVariable String pageName, @PathVariable int categoyId)
	{
		Gson gson = new Gson();
		ModelAndView model=new ModelAndView("main");
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
		model.addObject("showCategory", true);
		model.addObject("CategoryExtraCategories", extraCatService.getExtraCategories(categoyId));
		List<ProductsModel> CategoryProducts=productService.getCategoryProducts(categoyId);
		model.addObject("CategoryProductsJson", gson.toJson(CategoryProducts));
		model.addObject("CategoryProductsList", CategoryProducts);
		return model;
	}
}
