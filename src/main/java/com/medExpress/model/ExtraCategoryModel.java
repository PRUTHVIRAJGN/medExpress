package com.medExpress.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="EXTRA_SUB_CATEGORY")
public class ExtraCategoryModel {

	@Column(name="ID") 
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Id
	int id;
	@Column(name="NAME") 
	String name;
	@Column(name="DESCRIPTION")
	String description;
	@Column(name="IMAGE_URL")
	String imageUrl;
	@Column(name="TARGET_URL")
	String targetUrl;
	@Column(name="IS_ACTIVE")
	boolean isActive;
	@Column(name="SUB_CATEGORY_ID")
	int subCategoryId;
	@Column(name="CREATED_ON")
	String createdDate;
	@Column(name="LAST_UPDATED_ON")
	String updatedDate;
	@Column(name="MAKER_ID")
	String makerId;
	@Column(name="AUTHOR_ID")
	String authorId;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getImageUrl() {
		return imageUrl;
	}
	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}
	public String getTargetUrl() {
		return targetUrl;
	}
	public void setTargetUrl(String targetUrl) {
		this.targetUrl = targetUrl;
	}
	public boolean isActive() {
		return isActive;
	}
	public void setActive(boolean isActive) {
		this.isActive = isActive;
	}
	public int getSubCategoryId() {
		return subCategoryId;
	}
	public void setSubCategoryId(int subCategoryId) {
		this.subCategoryId = subCategoryId;
	}
	public String getCreatedDate() {
		return createdDate;
	}
	public void setCreatedDate(String createdDate) {
		this.createdDate = createdDate;
	}
	public String getUpdatedDate() {
		return updatedDate;
	}
	public void setUpdatedDate(String updatedDate) {
		this.updatedDate = updatedDate;
	}
	public String getMakerId() {
		return makerId;
	}
	public void setMakerId(String makerId) {
		this.makerId = makerId;
	}
	public String getAuthorId() {
		return authorId;
	}
	public void setAuthorId(String authorId) {
		this.authorId = authorId;
	}
	@Override
	public String toString() {
		return "ExtraCategoryModel [id=" + id + ", name=" + name + ", description=" + description + ", imageUrl="
				+ imageUrl + ", targetUrl=" + targetUrl + ", isActive=" + isActive + ", subCategoryId=" + subCategoryId
				+ ", createdDate=" + createdDate + ", updatedDate=" + updatedDate + ", makerId=" + makerId
				+ ", authorId=" + authorId + "]";
	}
	
	
}
