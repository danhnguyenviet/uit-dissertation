package com.wespeak.mapper;

import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.wespeak.model.Users;

import org.springframework.jdbc.core.RowMapper;

public class UserMapper implements RowMapper<Users> {

	@Override
	public Users mapRow(ResultSet rs, int rowNum) throws SQLException {
		Integer userId = rs.getInt("userId");
		String fullName = rs.getString("fullName");
		String username = rs.getString("username");
		String password = rs.getString("password");
		String gender = rs.getString("gender");
		Date dateOfBirth = rs.getDate("dateOfBirth");
		String phone = rs.getString("phone");
		String email = rs.getString("email");
		String address = rs.getString("address");
		String avatarPath = rs.getString("avatarPath");
		Integer userGroupId = rs.getInt("userGroupId");
		Integer active = rs.getInt("active");
		Date createdDate = rs.getDate("createdDate");

		return new Users(userId, fullName, username, password, gender, dateOfBirth, phone, email, address, avatarPath,
				userGroupId, active, createdDate);
	}

}