package com.jsp.ems.entity;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

import org.springframework.stereotype.Component;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Component
@Entity
@Getter
@Setter
@ToString
public class Employee {
	
	@Id
	@Column(nullable = false, unique = true)
	private int id;
	private String name;
	@Column(nullable = false, unique = true)
	private String email;
	@Column(nullable = false, unique = true, length = 10)
	private long phoneno;
	private int age;
	private String gender;
	private String role;
	
}
