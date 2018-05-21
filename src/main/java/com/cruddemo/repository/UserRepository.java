package com.cruddemo.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.cruddemo.model.User;

public interface UserRepository extends JpaRepository<User, Long> {
    User findByUsername(String username);
}
