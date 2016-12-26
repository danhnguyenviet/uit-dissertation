package com.wespeak.model;

public class EvaluationType {
	
	private Integer evaluationTypeId;
	private String evaluationTypeName;
	
	public EvaluationType() {
		super();
	}
	public EvaluationType(Integer evaluationTypeId, String evaluationTypeName) {
		super();
		this.evaluationTypeId = evaluationTypeId;
		this.evaluationTypeName = evaluationTypeName;
	}
	public Integer getEvaluationTypeId() {
		return evaluationTypeId;
	}
	public void setEvaluationTypeId(Integer evaluationTypeId) {
		this.evaluationTypeId = evaluationTypeId;
	}
	public String getEvaluationTypeName() {
		return evaluationTypeName;
	}
	public void setEvaluationTypeName(String evaluationTypeName) {
		this.evaluationTypeName = evaluationTypeName;
	}

}
