package com.example.demo;

import javax.persistence.Column;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Table;

import org.hibernate.annotations.Entity;
import org.springframework.data.annotation.Id;
@Table(name="employee")
@Entity

public class Employee {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private long id;
	
	private String fname;
	
	private String lname;
	
	private String email;
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	Employee() { super(); // TODO Auto-generated constructor stub
	}
	}
	/*
	 * @Override public String toString() { return "Employee [id=" + id + ", fname="
	 * + fname + ", lname=" + lname + ", email=" + email + "]"; } public
	 * Employee(int id, String fname, String lname, String email) { super(); this.id
	 * = id; this.fname = fname; this.lname = lname; this.email = email; } public
	 * Employee() { super(); // TODO Auto-generated constructor stub }
	 */
	
	
