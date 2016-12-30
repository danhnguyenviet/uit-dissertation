package com.wespeak.model;

import java.sql.Date;

public class Evaluation {
	
	private Integer evaluationId;
	private Integer evaluationTypeId;
	private Integer studentId;
	private String content;
	private Date createdDate;
	
	public Evaluation() {
		super();
	}
	public Evaluation(Integer evaluationId, Integer evaluationTypeId, Integer studentId, String content,
			Date createdDate) {
		super();
		this.evaluationId = evaluationId;
		this.evaluationTypeId = evaluationTypeId;
		this.studentId = studentId;
		this.content = content;
		this.createdDate = createdDate;
	}
	public Integer getEvaluationId() {
		return evaluationId;
	}
	public void setEvaluationId(Integer evaluationId) {
		this.evaluationId = evaluationId;
	}
	public Integer getEvaluationTypeId() {
		return evaluationTypeId;
	}
	public void setEvaluationTypeId(Integer evaluationTypeId) {
		this.evaluationTypeId = evaluationTypeId;
	}
	public Integer getStudentId() {
		return studentId;
	}
	public void setStudentId(Integer studentId) {
		this.studentId = studentId;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getCreatedDate() {
		return createdDate;
	}
	public void setCreatedDate(Date createdDate) {
		this.createdDate = createdDate;
	}

}
