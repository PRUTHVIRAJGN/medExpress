package com.medExpress.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

import com.sun.xml.bind.v2.model.core.ID;

@Entity
public class ProductsModel {

	@Id
	@Column(name="ID")
	int id;
	@Column(name="CODE")
	String productCode;
	@Column(name="NAME")
	String productName;
	@Column(name="BRAND")
	String productBrand;
	@Column(name="DESCRIPTION")
	String productDescription;
	@Column(name="PRODUCT_PRICE")
	Double productPrice;
	@Column(name="DISCOUNT")
	int productDiscount;
	@Column(name="PRESCRIPTION")
	boolean productPrescription;
	@Column(name="IS_IN_OFFER")
	boolean productIsInOffer;
	@Column(name="IS_IN_DISCOUNT")
	boolean productIsInDiscount;
	@Column(name="QUANTITY")
	int productQuantity;
	@Column(name="IMAGE_URL")
	String productImageUrl;
	@Column(name="TARGET_URL")
	String productTargetUrl;
	@Column(name="IS_ACTIVE")
	boolean productIsActive;
	@Column(name="SUB_CATEGORY_ID")
	int productSubCategoryId;
	@Column(name="EXTRA_SUB_CATEGORY_ID")
	int productExtraSubCategoryId;
	@Column(name="SUPPLIER_ID")
	String productSupplierId;
	@Column(name="PURCHASES")
	String productPurchases;
	@Column(name="RATING")
	Double productRating;
	@Column(name="PRODUCT_PRICE_PER")
	String productPricePer;
	@Column(name="VIEWS")
	String productViews;
	@Column(name="MAKER_ID")
	String productMakerId;
	@Column(name="AUTHOR_ID")
	String productAuthorId;


	public boolean isProductIsInDiscount() {
		return productIsInDiscount;
	}
	public void setProductIsInDiscount(boolean productIsInDiscount) {
		this.productIsInDiscount = productIsInDiscount;
	}
	public String getProductTargetUrl() {
		return productTargetUrl;
	}
	public void setProductTargetUrl(String productTargetUrl) {
		this.productTargetUrl = productTargetUrl;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getProductCode() {
		return productCode;
	}
	public void setProductCode(String productCode) {
		this.productCode = productCode;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getProductBrand() {
		return productBrand;
	}
	public void setProductBrand(String productBrand) {
		this.productBrand = productBrand;
	}
	public String getProductDescription() {
		return productDescription;
	}
	public void setProductDescription(String productDescription) {
		this.productDescription = productDescription;
	}
	public Double getProductPrice() {
		return productPrice;
	}
	public void setProductPrice(Double productPrice) {
		this.productPrice = productPrice;
	}
	public int getProductDiscount() {
		return productDiscount;
	}
	public void setProductDiscount(int productDiscount) {
		this.productDiscount = productDiscount;
	}
	public boolean isProductPrescription() {
		return productPrescription;
	}
	public void setProductPrescription(boolean productPrescription) {
		this.productPrescription = productPrescription;
	}
	public boolean isProductIsInOffer() {
		return productIsInOffer;
	}
	public void setProductIsInOffer(boolean productIsInOffer) {
		this.productIsInOffer = productIsInOffer;
	}
	public int getProductQuantity() {
		return productQuantity;
	}
	public void setProductQuantity(int productQuantity) {
		this.productQuantity = productQuantity;
	}
	public String getProductImageUrl() {
		return productImageUrl;
	}
	public void setProductImageUrl(String productImageUrl) {
		this.productImageUrl = productImageUrl;
	}
	public boolean isProductIsActive() {
		return productIsActive;
	}
	public void setProductIsActive(boolean productIsActive) {
		this.productIsActive = productIsActive;
	}
	public int getProductSubCategoryId() {
		return productSubCategoryId;
	}
	public void setProductSubCategoryId(int productSubCategoryId) {
		this.productSubCategoryId = productSubCategoryId;
	}
	public int getProductExtraSubCategoryId() {
		return productExtraSubCategoryId;
	}
	public void setProductExtraSubCategoryId(int productExtraSubCategoryId) {
		this.productExtraSubCategoryId = productExtraSubCategoryId;
	}
	public String getProductSupplierId() {
		return productSupplierId;
	}
	public void setProductSupplierId(String productSupplierId) {
		this.productSupplierId = productSupplierId;
	}
	public String getProductPurchases() {
		return productPurchases;
	}
	public void setProductPurchases(String productPurchases) {
		this.productPurchases = productPurchases;
	}
	public Double getProductRating() {
		return productRating;
	}
	public void setProductRating(Double productRating) {
		this.productRating = productRating;
	}
	public String getProductPricePer() {
		return productPricePer;
	}
	public void setProductPricePer(String productPricePer) {
		this.productPricePer = productPricePer;
	}
	public String getProductViews() {
		return productViews;
	}
	public void setProductViews(String productViews) {
		this.productViews = productViews;
	}
	public String getProductMakerId() {
		return productMakerId;
	}
	public void setProductMakerId(String productMakerId) {
		this.productMakerId = productMakerId;
	}
	public String getProductAuthorId() {
		return productAuthorId;
	}
	public void setProductAuthorId(String productAuthorId) {
		this.productAuthorId = productAuthorId;
	}
	@Override
	public String toString() {
		return "ProductsModel [id=" + id + ", productCode=" + productCode + ", productName=" + productName
				+ ", productBrand=" + productBrand + ", productDescription=" + productDescription + ", productPrice="
				+ productPrice + ", productDiscount=" + productDiscount + ", productPrescription=" + productPrescription
				+ ", productIsInOffer=" + productIsInOffer + ", productIsInDiscount=" + productIsInDiscount
				+ ", productQuantity=" + productQuantity + ", productImageUrl=" + productImageUrl
				+ ", productTargetUrl=" + productTargetUrl + ", productIsActive=" + productIsActive
				+ ", productSubCategoryId=" + productSubCategoryId + ", productExtraSubCategoryId="
				+ productExtraSubCategoryId + ", productSupplierId=" + productSupplierId + ", productPurchases="
				+ productPurchases + ", productRating=" + productRating + ", productPricePer=" + productPricePer
				+ ", productViews=" + productViews + ", productMakerId=" + productMakerId + ", productAuthorId="
				+ productAuthorId + "]";
	}
	
}
