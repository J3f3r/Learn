package com.jeferson.learn.entities;

import java.time.Instant;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Table;

@Entity
@Table(name= "tb_task")
public class Task extends Lesson{
	private static final long serialVersionUID = 1L;

	private String description;
	private Integer questionCount;
	private Integer aprovalCount;
	private Double weigth;
	
	@Column(columnDefinition = "TIMESTAMP WITHOUT TIME ZONE")
	private Instant dueDath;
	
	public Task() {}

	public Task(Long id, String title, Integer position, Section section, String description, Integer questionCount,
			Integer aprovalCount, Double weigth, Instant dueDath) {
		super(id, title, position, section);
		this.description = description;
		this.questionCount = questionCount;
		this.aprovalCount = aprovalCount;
		this.weigth = weigth;
		this.dueDath = dueDath;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Integer getQuestionCount() {
		return questionCount;
	}

	public void setQuestionCount(Integer questionCount) {
		this.questionCount = questionCount;
	}

	public Integer getAprovalCount() {
		return aprovalCount;
	}

	public void setAprovalCount(Integer aprovalCount) {
		this.aprovalCount = aprovalCount;
	}

	public Double getWeigth() {
		return weigth;
	}

	public void setWeigth(Double weigth) {
		this.weigth = weigth;
	}

	public Instant getDueDath() {
		return dueDath;
	}

	public void setDueDath(Instant dueDath) {
		this.dueDath = dueDath;
	}
}
