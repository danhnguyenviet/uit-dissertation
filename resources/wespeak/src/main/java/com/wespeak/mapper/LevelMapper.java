package com.wespeak.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.wespeak.model.Level;

public class LevelMapper implements RowMapper<Level> {

	@Override
	public Level mapRow(ResultSet rs, int num) throws SQLException {
		Integer levelId = rs.getInt("LevelId");
		String levelName = rs.getString("LevelName");
		Integer topicId = rs.getInt("TopicId");
		Integer points = rs.getInt("Points");
		
		return new Level(levelId, levelName, topicId, points);
	}

}
