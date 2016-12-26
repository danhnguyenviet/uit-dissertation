package com.wespeak.model;

public class UserScoreDetail {
	
	private Integer userScoreDetailId;
	private Integer levelId;
	private Integer scores;
	private Integer userScoreId;
	
	public UserScoreDetail() {
		super();
	}
	
	public UserScoreDetail(Integer userScoreDetailId, Integer levelId, Integer scores, Integer userScoreId) {
		super();
		this.userScoreDetailId = userScoreDetailId;
		this.levelId = levelId;
		this.scores = scores;
		this.userScoreId = userScoreId;
	}

	public Integer getUserScoreDetailId() {
		return userScoreDetailId;
	}

	public void setUserScoreDetailId(Integer userScoreDetailId) {
		this.userScoreDetailId = userScoreDetailId;
	}

	public Integer getLevelId() {
		return levelId;
	}

	public void setLevelId(Integer levelId) {
		this.levelId = levelId;
	}

	public Integer getScores() {
		return scores;
	}

	public void setScores(Integer scores) {
		this.scores = scores;
	}

	public Integer getUserScoreId() {
		return userScoreId;
	}

	public void setUserScoreId(Integer userScoreId) {
		this.userScoreId = userScoreId;
	}
	
}
