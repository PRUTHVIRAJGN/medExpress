package com.medExpress.model;

import java.util.List;

public class HomePage {

	String homeVideoText;
	String homePopularCategoryText;
	List homePopularCategories;
	String homeSpecialOffersText;
	List homeSpecialOfferSubcategory;
	List homeSpecialOfferSubcategoryProducts;
	List homeSubCategories;
	List homeBanners;
	List homeProducts;
	public String getHomeVideoText() {
		return homeVideoText;
	}
	public void setHomeVideoText(String homeVideoText) {
		this.homeVideoText = homeVideoText;
	}
	public String getHomePopularCategoryText() {
		return homePopularCategoryText;
	}
	public void setHomePopularCategoryText(String homePopularCategoryText) {
		this.homePopularCategoryText = homePopularCategoryText;
	}
	public List getHomePopularCategories() {
		return homePopularCategories;
	}
	public void setHomePopularCategories(List homePopularCategories) {
		this.homePopularCategories = homePopularCategories;
	}
	public String getHomeSpecialOffersText() {
		return homeSpecialOffersText;
	}
	public void setHomeSpecialOffersText(String homeSpecialOffersText) {
		this.homeSpecialOffersText = homeSpecialOffersText;
	}
	public List getHomeSpecialOfferSubcategory() {
		return homeSpecialOfferSubcategory;
	}
	public void setHomeSpecialOfferSubcategory(List homeSpecialOfferSubcategory) {
		this.homeSpecialOfferSubcategory = homeSpecialOfferSubcategory;
	}
	public List getHomeSpecialOfferSubcategoryProducts() {
		return homeSpecialOfferSubcategoryProducts;
	}
	public void setHomeSpecialOfferSubcategoryProducts(List homeSpecialOfferSubcategoryProducts) {
		this.homeSpecialOfferSubcategoryProducts = homeSpecialOfferSubcategoryProducts;
	}
	public List getHomeSubCategories() {
		return homeSubCategories;
	}
	public void setHomeSubCategories(List homeSubCategories) {
		this.homeSubCategories = homeSubCategories;
	}
	public List getHomeBanners() {
		return homeBanners;
	}
	public void setHomeBanners(List homeBanners) {
		this.homeBanners = homeBanners;
	}
	public List getHomeProducts() {
		return homeProducts;
	}
	public void setHomeProducts(List homeProducts) {
		this.homeProducts = homeProducts;
	}
	@Override
	public String toString() {
		return "HomePage [homeVideoText=" + homeVideoText + ", homePopularCategoryText=" + homePopularCategoryText
				+ ", homePopularCategories=" + homePopularCategories + ", homeSpecialOffersText="
				+ homeSpecialOffersText + ", homeSpecialOfferSubcategory=" + homeSpecialOfferSubcategory
				+ ", homeSpecialOfferSubcategoryProducts=" + homeSpecialOfferSubcategoryProducts
				+ ", homeSubCategories=" + homeSubCategories + ", homeBanners=" + homeBanners + ", homeProducts="
				+ homeProducts + "]";
	}
	
	
}
