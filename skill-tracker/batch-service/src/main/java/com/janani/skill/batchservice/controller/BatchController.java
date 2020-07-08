package com.janani.skill.batchservice.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.janani.skill.batchservice.model.Batch;
import com.janani.skill.batchservice.repository.BatchRepository;

@RestController
@RequestMapping("batches")
public class BatchController {

	@Autowired
	private BatchRepository repository;

	@GetMapping
	public List<Batch> findAll() {
		return repository.findAll();
	}

	@GetMapping("{id}")
	public Batch findById(@PathVariable Long id) {
		return repository.getOne(id);
	}

	@PostMapping
	public Batch save(@RequestBody Batch batch) {
		return repository.save(batch);
	}
	
	@PutMapping
	public Batch update(@RequestBody Batch batch) {
		return repository.save(batch);
	}
	
	@DeleteMapping("{id}")
	public void delete(@PathVariable Long id) {
		repository.deleteById(id);
	}
}
