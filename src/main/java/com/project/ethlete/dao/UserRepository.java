package com.project.ethlete.dao;

import org.springframework.data.repository.CrudRepository;

import com.project.ethlete.domain.User;

public interface UserRepository extends CrudRepository<User, Long> {

}
