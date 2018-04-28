package com.project.ethlete.domain;

import javax.persistence.Entity;
import javax.persistence.OneToOne;

@Entity
public class Privilege extends BaseEntity{
	
	private String name;
	
	@OneToOne
	private Description description;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Description getDescription() {
		return description;
	}

	public void setDescription(Description description) {
		this.description = description;
	}

}
