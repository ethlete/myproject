package com.project.ethlete.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.project.ethlete.domain.Country;
import com.project.ethlete.repository.CountryRepository;

@RestController
@RequestMapping(path="/country")
public class CountryController {
	
	@Autowired
	private CountryRepository countryRepository;
	
	@GetMapping(path="/all")
	public Iterable<Country> addNewCountry(Country country) {
		return countryRepository.findAll();
	}

}
