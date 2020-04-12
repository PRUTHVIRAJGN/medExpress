package com.medExpress.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.medExpress.model.ProductsModel;
import com.medExpress.repo.ProductsRepo;

@Service
public class ProductsService {

	@Autowired
	ProductsRepo repo;
	
	public List<ProductsModel> getCategoryProducts(int id)
	{
		return repo.getProductsByCategoryId(id);
	}
	
	public List<ProductsModel> getPopularityProducts(int id)
	{
		return repo.getProductsByPopularity(id);
	}

	public List<ProductsModel> getAtoZProducts(int id) {
		return repo.getProductsByAtoZ(id);
	}

	public List<ProductsModel> getHighToLowProducts(int id) {
		return repo.getProductsByHighToLowPrice(id);
	}

	public List<ProductsModel> getLowToHighProducts(int id) {
		return repo.getProductsByLowToHighPrice(id);
	}

	public List<ProductsModel> getDiscountProducts(int id) {
		return repo.getProductsByDiscount(id);
	}

	public List<ProductsModel> getZtoAProducts(int id) {
		return repo.getProductsByZtoA(id);
	}
	
}
