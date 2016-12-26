package com.wespeak.model;

public class Level {
	
	private Integer levelId;
	private String levelName;
	private Integer topicId;
	private Integer points;
	
	public Level() {
		super();
	}

	public Level(Integer levelId, String levelName, Integer topicId, Integer points) {
		super();
		this.levelId = levelId;
		this.levelName = levelName;
		this.topicId = topicId;
		this.points = points;
	}

	public Integer getLevelId() {
		return levelId;
	}

	public void setLevelId(Integer levelId) {
		this.levelId = levelId;
	}

	public String getLevelName() {
		return levelName;
	}

	public void setLevelName(String levelName) {
		this.levelName = levelName;
	}

	public Integer getTopicId() {
		return topicId;
	}

	public void setTopicId(Integer topicId) {
		this.topicId = topicId;
	}

	public Integer getPoints() {
		return points;
	}

	public void setPoints(Integer points) {
		this.points = points;
	}
	
}
