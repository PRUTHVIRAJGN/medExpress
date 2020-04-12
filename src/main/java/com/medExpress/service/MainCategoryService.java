package com.medExpress.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.medExpress.model.MainCategoryModel;
import com.medExpress.repo.MainCategoryRepo;

@Service
public class MainCategoryService {

	@Autowired
	MainCategoryRepo repo;
	
	public List<MainCategoryModel> getMainCategoryList()
	{
		return repo.getList();
	}
}
