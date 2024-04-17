package com.example.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.entity.User;

@Repository
public interface LoginRepository extends JpaRepository<User, Long> {

    User findByUsernameAndPassword(String name, String password);

}