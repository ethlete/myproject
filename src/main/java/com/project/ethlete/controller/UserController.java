package com.project.ethlete.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.project.ethlete.domain.User;
import com.project.ethlete.emun.Gender;
import com.project.ethlete.repository.UserRepository;

@RestController
@RequestMapping(path="/demo")
public class UserController {
	
	@Autowired // This means to get the bean called userRepository
    // Which is auto-generated by Spring, we will use it to handle the data
	private UserRepository userRepository;
	
	@GetMapping(path="/add") // Map ONLY GET Requests
	public String addNewUser (@RequestParam String name
			, @RequestParam String email) {
		// @ResponseBody means the returned String is the response, not a view name
		// @RequestParam means it is a parameter from the GET or POST request

		User n = new User();
		n.setFirstName(name);
		n.setEmail(email);
		n.setGender(Gender.MALE);
		userRepository.save(n);
		return "Saved";
	}

	@GetMapping(path="/all")
	public Iterable<User> getAllUsers() {
		// This returns a JSON or XML with the users
		return userRepository.findAll();
	}

}
