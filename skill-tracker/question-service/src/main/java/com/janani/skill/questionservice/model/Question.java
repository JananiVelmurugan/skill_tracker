package com.janani.skill.questionservice.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Question {

	@Id
	private Long id;

	private String technology;

	private String description;

	private Integer day;

	public Question() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Question(Long id, String technology, String description, Integer day) {
		super();
		this.id = id;
		this.technology = technology;
		this.description = description;
		this.day = day;
	}

	public Long getId() {
		return id;
	}

	public String getTechnology() {
		return technology;
	}

	public String getDescription() {
		return description;
	}

	public Integer getDay() {
		return day;
	}

}
