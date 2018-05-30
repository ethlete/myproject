package com.project.ethlete.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.project.ethlete.domain.Department;
import com.project.ethlete.repository.DepartmentRepository;
import com.project.ethlete.util.ResponseState;

@RestController
@RequestMapping(path="/department")
public class DepartmentController {
	
	@Autowired
	private DepartmentRepository departmentRepository;
	
	@PostMapping(path="/add")
	public ResponseState add(@RequestBody Department dept) {
		
		departmentRepository.save(dept.getParent());

		departmentRepository.save(dept);
		
		return ResponseState.SUCCESS;
	}

}
