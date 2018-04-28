package com.project.ethlete.domain;

import java.util.Date;
import java.util.Set;

import javax.persistence.*;

import com.project.ethlete.emun.Gender;

@Entity
public class User extends BaseEntity{

	private UserName name;

	private Gender gender;

	private String employeeNo;

	private Date dateOfBirth;

	private String email;
	
	@ManyToOne
	private Country nationality;

	@ManyToMany
	private Set<Role> roles;

	@ManyToOne
	private Department department;

	public UserName getName() {
		return name;
	}

	public void setName(UserName name) {
		this.name = name;
	}

	public Gender getGender() {
		return gender;
	}

	public void setGender(Gender gender) {
		this.gender = gender;
	}

	public String getEmployeeNo() {
		return employeeNo;
	}

	public void setEmployeeNo(String employeeNo) {
		this.employeeNo = employeeNo;
	}

	public Date getDateOfBirth() {
		return dateOfBirth;
	}

	public void setDateOfBirth(Date dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Country getNationality() {
		return nationality;
	}

	public void setNationality(Country nationality) {
		this.nationality = nationality;
	}

	public Set<Role> getRoles() {
		return roles;
	}

	public void setRoles(Set<Role> roles) {
		this.roles = roles;
	}

	public Department getDepartment() {
		return department;
	}

	public void setDepartment(Department department) {
		this.department = department;
	}
}