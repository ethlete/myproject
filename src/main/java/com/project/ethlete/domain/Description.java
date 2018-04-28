package com.project.ethlete.domain;

import javax.persistence.Entity;

@Entity
public class Description extends BaseEntity {
	
	private String description;

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

}
