package com.project.ethlete.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.project.ethlete.properties.Config;
import com.project.ethlete.service.MyService;

@RestController
public class Example {
	
	@Autowired
	private MyService service;

	@RequestMapping("/")
	String home() {
		
		return "Hello World!";
	}

	@RequestMapping("/config")
	String config() {
		
		service.openConnection();
		return "";
	}
	
	
}