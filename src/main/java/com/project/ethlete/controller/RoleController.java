package com.project.ethlete.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.project.ethlete.domain.Role;
import com.project.ethlete.repository.RoleRepository;
import com.project.ethlete.util.ResponseState;

@RestController
@RequestMapping(path="/role")
public class RoleController {
	
	@Autowired
	private RoleRepository roleRepository;
	
	@PostMapping(path="addAll")
	public String addAll(@RequestBody List<Role> roles) {
		
		roleRepository.saveAll(roles);
		
		return ResponseState.SUCCESS.name();
	}

}
