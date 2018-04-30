package com.project.ethlete.repository;

import org.springframework.data.repository.CrudRepository;

import com.project.ethlete.domain.Country;

public interface CountryRepository extends CrudRepository<Country, String> {
	
	Country findFirstByIsoCode(String isoCode);

}
