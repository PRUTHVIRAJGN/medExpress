package com.medExpress.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="PAGE_DETAILS")
public class PageDetailsModel {

	@Id
	@Column(name="NAME")
	String name;
	@Column(name="VALUE")
	String value;
	@Column(name="DESCRIPTION")
	String description;
	@Column(name="PAGE_NAME")
	String pageName;
	@Column(name="CREATED_ON")
	String createdOn;
	@Column(name="LAST_UPDATED_ON")
	String lastUpdatedOn;
	@Column(name="MAKER_ID")
	String makerId;
	@Column(name="AUTHOR_ID")
	String authorId;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getValue() {
		return value;
	}
	public void setValue(String value) {
		this.value = value;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getPageName() {
		return pageName;
	}
	public void setPageName(String pageName) {
		this.pageName = pageName;
	}
	public String getCreatedOn() {
		return createdOn;
	}
	public void setCreatedOn(String createdOn) {
		this.createdOn = createdOn;
	}
	public String getLastUpdatedOn() {
		return lastUpdatedOn;
	}
	public void setLastUpdatedOn(String lastUpdatedOn) {
		this.lastUpdatedOn = lastUpdatedOn;
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
		return "PageDetailsModel [name=" + name + ", value=" + value + ", description=" + description + ", pageName="
				+ pageName + ", createdOn=" + createdOn + ", lastUpdatedOn=" + lastUpdatedOn + ", makerId=" + makerId
				+ ", authorId=" + authorId + "]";
	}	
	
}
