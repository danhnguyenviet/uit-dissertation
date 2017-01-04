package com.wespeak.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.wespeak.model.CoursewareModel;

import org.springframework.jdbc.core.RowMapper;

public class CoursewareMapper implements RowMapper<CoursewareModel> {

	@Override
	public CoursewareModel mapRow(ResultSet rs, int rowNum) throws SQLException {

		Integer coursewareId = rs.getInt("coursewareId");
		String coursewareName = rs.getString("coursewareName");
		String description = rs.getString("description");
		Integer active = rs.getInt("active");
		String coursewarePath = rs.getString("coursewarePath");
		Integer contributorId = rs.getInt("contributorId");
		String author = rs.getString("author");
		Integer numOfView = rs.getInt("numOfView");
		String userName= rs.getString("FullName");

		return new CoursewareModel(coursewareId, coursewareName, description, active, coursewarePath, contributorId, author,
				numOfView, userName);
	}

}