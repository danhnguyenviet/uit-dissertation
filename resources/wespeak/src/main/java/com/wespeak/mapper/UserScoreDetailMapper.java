package com.wespeak.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;

import com.wespeak.model.UserScoreDetail;

public class UserScoreDetailMapper implements RowMapper<UserScoreDetail> {
	
	public UserScoreDetail mapRow(ResultSet rs, int rowNum) throws SQLException {
		
		Integer userScoreDetailId = rs.getInt("UserScoreDetailId"); 
		Integer levelId = rs.getInt("LevelId"); 
		Integer scores = rs.getInt("Scores"); 
		Integer userScoreId = rs.getInt("UserScoreId");
		
		return new UserScoreDetail(userScoreDetailId, levelId, scores, userScoreId);
	}

}
