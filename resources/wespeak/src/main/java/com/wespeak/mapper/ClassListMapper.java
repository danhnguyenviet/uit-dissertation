package com.wespeak.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.wespeak.model.ClassList;

import org.springframework.jdbc.core.RowMapper;

public class ClassListMapper implements RowMapper<ClassList> {

	@Override
	public ClassList mapRow(ResultSet rs, int rowNum) throws SQLException {

		int ClassId = rs.getInt("ClassId");
		String ClassName = rs.getString("ClassName");
		String StartDate = rs.getString("StartDate").substring(11, 16);
		String EndDate = rs.getString("EndDate").substring(11, 16);
		int TeacherId = rs.getInt("TeacherId");
		String FullName= rs.getString("FullName");

		return new ClassList(ClassId, ClassName, StartDate, EndDate, TeacherId, FullName);
	}

}