package com.medExpress.service;

import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.medExpress.model.SubCategoryModel;
import com.medExpress.repo.SubCategoryRepo;

@Service
public class SubCategoryService {

	@Autowired
	SubCategoryRepo repo;
	
	public List<SubCategoryModel> getSubCategoryList(int id)
	{
		return repo.getSubCatById(id);
	}

	public List<SubCategoryModel> getSubCategories(String categoryList) {
		List<Integer> categoryListInt = Arrays.stream(categoryList.split(","))
		        .map(Integer::parseInt)
		        .collect(Collectors.toList());
		return repo.getSubCategoriesList(categoryListInt);
	}
}
