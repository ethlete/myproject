package com.project.ethlete.repository;

import org.springframework.data.repository.CrudRepository;

import com.project.ethlete.domain.Department;

public interface DepartmentRepository extends CrudRepository<Department, String> {

}
