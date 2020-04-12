package com.medExpress.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.medExpress.model.ExtraCategoryModel;
import com.medExpress.repo.ExtraCategoryRepo;

@Service
public class ExtraCategoriesService {

	@Autowired
	ExtraCategoryRepo extraCatRepo;
	public List<ExtraCategoryModel> getExtraCategories(int sub_cat_id)
	{
		return extraCatRepo.getExtraCategoryList(sub_cat_id);
	}
}
