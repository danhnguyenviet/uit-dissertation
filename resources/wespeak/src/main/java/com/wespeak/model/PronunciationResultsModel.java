package com.wespeak.model;

public class PronunciationResultsModel {
	
	private Integer userId;
	private Integer levelId;
	private Integer point;
	
	public PronunciationResultsModel() {
		super();
	}

	public PronunciationResultsModel(Integer userId, Integer levelId, Integer point) {
		super();
		this.userId = userId;
		this.levelId = levelId;
		this.point = point;
	}

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public Integer getLevelId() {
		return levelId;
	}

	public void setLevelId(Integer levelId) {
		this.levelId = levelId;
	}

	public Integer getPoint() {
		return point;
	}

	public void setPoint(Integer point) {
		this.point = point;
	}
	
}
