package com.project.ethlete.service;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.ethlete.properties.AcmeProperties;

@Service
public class MyService {

	private final AcmeProperties properties;

	@Autowired
	public MyService(AcmeProperties properties) {
	    this.properties = properties;
	}

 	//...

	@PostConstruct
	public void openConnection() {
		System.out.println(properties.getList().get(0).getName());
//		Server server = new Server(this.properties.getRemoteAddress());
		// ...
	}
}
