package com.janani.skill.userresponseservice.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class UserResponse {

	@Id
	private Long id;

	private Long batchId;

	private Long userId;

	private Long questionId;

	private String response;

	public Long getId() {
		return id;
	}

	public Long getBatchId() {
		return batchId;
	}

	public Long getUserId() {
		return userId;
	}

	public Long getQuestionId() {
		return questionId;
	}

	public String getResponse() {
		return response;
	}

}
