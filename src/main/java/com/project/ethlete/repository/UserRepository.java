package com.project.ethlete.repository;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.EntityGraph;
import org.springframework.data.jpa.repository.EntityGraph.EntityGraphType;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.project.ethlete.domain.Country;
import com.project.ethlete.domain.User;

public interface UserRepository extends CrudRepository<User, String> {

	User findFirstByEmployeeNo(String employeeNo);
	
	@EntityGraph(value="userWithRolesAndDepartment",type=EntityGraphType.FETCH)
	List<User> findByName_FirstNameAndName_LastName(String firstName, String lastName);
	
	void deleteByEmployeeNo(String employeeNo);
	
	@Modifying
	@Query("update User u set u.country = ?2 where u.employeeNo = ?1")
	@Transactional
	int updateCountryByEmployeeNo(String employeeNo, Country country);

}
