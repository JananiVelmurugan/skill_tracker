package com.janani.skill.batchservice.model;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity
@JsonIgnoreProperties({ "hibernateLazyInitializer", "handler" })
public class Batch {

	@Id
	@Column(name = "BATCH_ID")
	private Long id;
	private String name;
	private String location;

	// @ManyToOne
	// @JoinColumn(name = "USER_ID")
	private User trainer;

	// @OneToMany(mappedBy = "batch")
	// @JsonIgnore
	private Set<User> trainees;

	public Long getId() {
		return id;
	}

	public String getName() {
		return name;
	}

	public String getLocation() {
		return location;
	}

	public User getTrainer() {
		return trainer;
	}

	public Set<User> getTrainees() {
		return trainees;
	}

}
