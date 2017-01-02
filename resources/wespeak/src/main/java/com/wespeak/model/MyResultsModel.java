package com.wespeak.model;

public class MyResultsModel {
	
	private Integer levelPoints;
	private Integer totalPoints;
	
	public MyResultsModel() {
		super();
	}

	public MyResultsModel(Integer levelPoints, Integer totalPoints) {
		super();
		this.levelPoints = levelPoints;
		this.totalPoints = totalPoints;
	}

	public Integer getLevelPoints() {
		return levelPoints;
	}

	public void setLevelPoints(Integer levelPoints) {
		this.levelPoints = levelPoints;
	}

	public Integer getTotalPoints() {
		return totalPoints;
	}

	public void setTotalPoints(Integer totalPoints) {
		this.totalPoints = totalPoints;
	}
	
}
