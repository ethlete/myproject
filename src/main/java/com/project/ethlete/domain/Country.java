package com.project.ethlete.domain;

import javax.persistence.Entity;

@Entity
public class Country extends BaseEntity{
	
	private String name;
	
	private String isoCode;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getIsoCode() {
		return isoCode;
	}

	public void setIsoCode(String isoCode) {
		this.isoCode = isoCode;
	}
}
