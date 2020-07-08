package com.janani.skill.questionservice.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.janani.skill.questionservice.model.Question;
import com.janani.skill.questionservice.repository.QuestionRepository;

@RestController
@RequestMapping("questions")
public class QuestionController {
	@Autowired
	private QuestionRepository repository;

	@GetMapping
	public List<Question> findAll() {
		return repository.findAll();
	}

	@GetMapping("{id}")
	public Optional<Question> findById(@PathVariable Long id) {
		return repository.findById(id);
	}

	@PostMapping
	public Question save(@RequestBody Question question) {
		return repository.save(question);
	}

	@PutMapping
	public Question update(@RequestBody Question question) {
		return repository.save(question);
	}

	@DeleteMapping("{id}")
	public void delete(@PathVariable Long id) {
		repository.deleteById(id);
	}

}
