package com.medExpress.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="MAIN_CATEGORY")
public class MainCategoryModel {
	private static final long serialVersionUID = 1L;
	@Column(name="ID")
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY) 
	int id;
	@Column(name="NAME")
	String name;
	@Column(name="DESCRIPTION")
	String description;
	@Column(name="IMAGE_URL")
	String imageUrl;
	@Column(name="IS_ACTIVE")
	boolean isActive;
	@Column(name="CREATED_ON")
	String createdDate;
	@Column(name="LAST_UPDATED_ON")
	String lastUdatedDate;
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
	public boolean isActive() {
		return isActive;
	}
	public void setActive(boolean isActive) {
		this.isActive = isActive;
	}
	public String getCreatedDate() {
		return createdDate;
	}
	public void setCreatedDate(String createdDate) {
		this.createdDate = createdDate;
	}
	public String getLastUdatedDate() {
		return lastUdatedDate;
	}
	public void setLastUdatedDate(String lastUdatedDate) {
		this.lastUdatedDate = lastUdatedDate;
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
		return "MainCategoryModel [id=" + id + ", name=" + name + ", description=" + description + ", imageUrl="
				+ imageUrl + ", isActive=" + isActive + ", createdDate=" + createdDate + ", lastUdatedDate="
				+ lastUdatedDate + ", makerId=" + makerId + ", authorId=" + authorId + "]";
	}
}
