package com.janani.skill.batchservice.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.janani.skill.batchservice.model.Batch;

public interface BatchRepository extends JpaRepository<Batch, Long> {
	

}

