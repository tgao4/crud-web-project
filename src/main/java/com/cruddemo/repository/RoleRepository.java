package com.cruddemo.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.cruddemo.model.Role;

public interface RoleRepository extends JpaRepository<Role, Long>{
}
