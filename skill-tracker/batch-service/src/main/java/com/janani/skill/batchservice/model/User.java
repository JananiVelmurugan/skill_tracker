package com.janani.skill.batchservice.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class User {

	@Id
	@Column(name = "USER_ID")
	private Long id;

	private String name;

	private String email;

	private String password;

	// @ManyToOne
	// @JoinColumn(name="BATCH_ID")
	private Batch batch;

	public Long getId() {
		return id;
	}

	public String getName() {
		return name;
	}

	public String getEmail() {
		return email;
	}

	public String getPassword() {
		return password;
	}

	public Batch getBatch() {
		return batch;
	}

}
