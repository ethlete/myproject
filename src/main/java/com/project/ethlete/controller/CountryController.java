package com.project.ethlete.controller;

import java.util.Date;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.project.ethlete.domain.Country;
import com.project.ethlete.repository.CountryRepository;

@RestController
@RequestMapping(path="/country")
public class CountryController {
	
	private Log log = LogFactory.getLog(CountryController.class);

	
	@Autowired
	private CountryRepository countryRepository;
	
	@GetMapping(path="/all")
	public Iterable<Country> findAllCountries() {
		return countryRepository.findAll();
	}
	
	@GetMapping(path="/find/{isoCode}")
	public Country findByIsoCode(@PathVariable String isoCode) {
		log.info(isoCode);
		return countryRepository.findFirstByIsoCode(isoCode);
	}
	
	@PostMapping(path="/save")
	public Country save(@RequestBody Country country) {
		
		// save country name
		Country persistedCountry = countryRepository.findFirstByIsoCode(country.getIsoCode());
		persistedCountry.setName(country.getName());
		persistedCountry.setValidTo(new Date());
		return countryRepository.save(persistedCountry);
		
//		int updatedCount = countryRepository.updateNameByIsoCode(country.getIsoCode(), country.getName());
//		
//		return countryRepository.findFirstByIsoCode(country.getIsoCode());
		
	}

}
