package com.wespeak.model;

public class UserScore {
	
	private Integer userScoreId;
	private Integer userId;
	private Integer scores;
	
	public UserScore() {
		super();
	}

	public UserScore(Integer userScoreId, Integer userId, Integer scores) {
		super();
		this.userScoreId = userScoreId;
		this.userId = userId;
		this.scores = scores;
	}

	public Integer getUserScoreId() {
		return userScoreId;
	}

	public void setUserScoreId(Integer userScoreId) {
		this.userScoreId = userScoreId;
	}

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public Integer getScores() {
		return scores;
	}

	public void setScores(Integer scores) {
		this.scores = scores;
	}
	
}
