package com.example.demo;

import org.springframework.data.jpa.repository.JpaRepository;

public interface Emorepository extends JpaRepository<Employee,Long> {

}
