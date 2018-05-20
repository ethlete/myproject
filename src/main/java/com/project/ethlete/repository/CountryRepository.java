package com.project.ethlete.repository;

import javax.transaction.Transactional;

import org.springframework.cache.annotation.CacheConfig;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.project.ethlete.domain.Country;

@CacheConfig(cacheNames="country")
public interface CountryRepository extends CrudRepository<Country, String> {
	
	@Cacheable(key="#p0", sync=true)
	Country findFirstByIsoCode(String isoCode);
	
	@Modifying
	@Query("update Country c set c.name = ?2 where c.isoCode = ?1")
	@Transactional
//	@CachePut(key="#p0.isoCode")
	int updateNameByIsoCode(String isoCode, String name);
}
