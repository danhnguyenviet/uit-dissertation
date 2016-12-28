package com.wespeak.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.wespeak.model.UserScore;

public class UserScoreMapper implements RowMapper<UserScore> {
	
	public UserScore mapRow(ResultSet rs, int rowNum) throws SQLException {
		
		Integer userScoreId = rs.getInt("UserScoreId");
		Integer userId = rs.getInt("UserId");
		Integer scores = rs.getInt("Scores");
		
		return new UserScore(userScoreId, userId, scores);
	}

}
