package com.janani.skill.questionservice.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.janani.skill.questionservice.model.Question;

public interface QuestionRepository extends JpaRepository<Question, Long> {

}
