package com.project.ethlete.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.ethlete.domain.User;
import com.project.ethlete.repository.UserRepository;
import com.project.ethlete.service.UserService;

@Service
public class UserServiceImpl implements UserService{
	
	private Log log = LogFactory.getLog(UserServiceImpl.class);
	
	@Autowired
	private UserRepository userRepository;
	
	@Autowired
	private EntityManagerFactory entityManagerFactory;
	
	@Autowired
	private EntityManager entityManager;

	@Override
	public Iterable<User> findAll() {
		List<User> users = new ArrayList<User>();
		
		log.info("------------------------------------");

		userRepository.findAll().forEach(users::add);
		
		log.info("------------------------------------");
		
//		entityManager = entityManagerFactory.createEntityManager();
		
//		EntityGraph<?> graph = entityManager.getEntityGraph("userWithRolesAndDepartment");
//
//		users = entityManager.createQuery("SELECT a FROM User a", User.class)
//				.setHint("javax.persistence.loadgraph", graph)
//				.setHint("org.hibernate.cacheable", false)
//				.getResultList();
		
		log.info("------------------------------------");
//		entityManager.close();

		return users;
	}

}
