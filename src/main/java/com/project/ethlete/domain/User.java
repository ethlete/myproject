package com.project.ethlete.domain;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.OneToOne;

import com.project.ethlete.emun.Gender;

@Entity 
public class User extends BaseEntity{

	private String firstName;
	private String middleName;
	private String lastName;
	private String nativeName;

	private Gender gender;

	@OneToOne(cascade=CascadeType.ALL)
	private Title title;

	private Date dateOfBirth;

	private String email;
	
	@OneToOne(cascade=CascadeType.ALL)
	private Country nationality;

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getMiddleName() {
		return middleName;
	}

	public void setMiddleName(String middleName) {
		this.middleName = middleName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getNativeName() {
		return nativeName;
	}

	public void setNativeName(String nativeName) {
		this.nativeName = nativeName;
	}

	public Gender getGender() {
		return gender;
	}

	public void setGender(Gender gender) {
		this.gender = gender;
	}

	public Title getTitle() {
		return title;
	}

	public void setTitle(Title title) {
		this.title = title;
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

	@Override
	public String toString() {
		return "User [firstName=" + firstName + ", middleName=" + middleName + ", lastName=" + lastName
				+ ", nativeName=" + nativeName + ", gender=" + gender + ", title=" + title + ", dateOfBirth="
				+ dateOfBirth + ", email=" + email + ", nationality=" + nationality + ", toString()=" + super.toString()
				+ "]";
	}



}