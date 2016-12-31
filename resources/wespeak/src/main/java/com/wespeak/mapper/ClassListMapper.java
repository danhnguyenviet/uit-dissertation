package com.wespeak.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import com.wespeak.model.ClassList;

import org.springframework.jdbc.core.RowMapper;

public class ClassListMapper implements RowMapper<ClassList> {

	@Override
	public ClassList mapRow(ResultSet rs, int rowNum) throws SQLException {

		int ClassId = rs.getInt("ClassId");
		String ClassName = rs.getString("ClassName");
//		Date  pathStart=rs.getDate("StartDate");
//		
//		DateFormat df = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");//output : Wed Nov 09 11:00:00 GMT+02:00 2011

		// get the start date with new format (pattern) 
//		String hours = df.format(pathStart);
//		System.out.print(hours);
//		String StartDate = df.format(rs.getDate("StartDate"));
//		String EndDate = df.format(rs.getDate("EndDate"));

		String StartDate = rs.getString("StartDate").substring(11, 16);
		String EndDate = rs.getString("EndDate").substring(11, 16);
		int TeacherId = rs.getInt("TeacherId");
		String FullName= rs.getString("FullName");

		return new ClassList(ClassId, ClassName, StartDate, EndDate, TeacherId, FullName);
	}

}