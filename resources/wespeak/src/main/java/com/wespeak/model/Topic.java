package com.wespeak.model;

public class Topic {
	
	private Integer topicId;
	private String topicName;
	private Integer points;
	private Integer numOfLevel;
	
	public Topic() {
		super();
	}

	public Topic(Integer topicId, String topicName, Integer points, Integer numOfLevel) {
		super();
		this.topicId = topicId;
		this.topicName = topicName;
		this.points = points;
		this.numOfLevel = numOfLevel;
	}

	public Integer getTopicId() {
		return topicId;
	}

	public void setTopicId(Integer topicId) {
		this.topicId = topicId;
	}

	public String getTopicName() {
		return topicName;
	}

	public void setTopicName(String topicName) {
		this.topicName = topicName;
	}

	public Integer getPoints() {
		return points;
	}

	public void setPoints(Integer points) {
		this.points = points;
	}

	public Integer getNumOfLevel() {
		return numOfLevel;
	}

	public void setNumOfLevel(Integer numOfLevel) {
		this.numOfLevel = numOfLevel;
	}
	
	
}
