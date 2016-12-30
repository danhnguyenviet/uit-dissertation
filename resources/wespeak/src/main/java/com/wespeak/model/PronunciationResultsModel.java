package com.wespeak.model;

public class PronunciationResultsModel {
	
	private String username;
	private Integer levelId;
	private Integer points;
	
	public PronunciationResultsModel() {
		super();
	}

	public PronunciationResultsModel(String username, Integer levelId, Integer points) {
		super();
		this.username = username;
		this.levelId = levelId;
		this.points = points;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public Integer getLevelId() {
		return levelId;
	}

	public void setLevelId(Integer levelId) {
		this.levelId = levelId;
	}

	public Integer getPoints() {
		return points;
	}

	public void setPoints(Integer points) {
		this.points = points;
	}
	
}
