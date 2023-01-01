package com.example.demo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/v1")
public class EmpController {
	
	  @Autowired private Emorepository emprepo;
	  
	  @GetMapping("/employees") public List<Employee> getEmployees(){ return
	  emprepo.findAll();}
	  
	  @PostMapping("/employee") public Employee
	  createEmployee(@Validated @RequestBody Employee employee){ return
	  emprepo.save(employee);}
	  
	  
	  
	  @DeleteMapping("/employee/{id}") public Employee
	  deleteEmployee(@Validated @RequestBody Employee employee){ return
	  emprepo.delete(employee);}
	  
	  
	 }
