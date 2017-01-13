package com.wespeak.mapper;

import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.wespeak.model.UserInfo;
import org.springframework.jdbc.core.RowMapper;
 
public class UserInfoMapper implements RowMapper<UserInfo> {
 
    public UserInfo mapRow(ResultSet rs, int rowNum) throws SQLException {
 
    	Integer userId = rs.getInt("UserId");
    	String fullname = rs.getString("FullName");
        String username = rs.getString("Username");
        String password = rs.getString("Password");
    	String gender = rs.getString("Gender");
    	Date dateOfBirth = rs.getDate("DateOfBirth");
    	String phone = rs.getString("Phone");
    	String email = rs.getString("Email");
    	String address = rs.getString("Address");
    	String avatarPath = rs.getString("AvatarPath");
    	Integer userGroupId = rs.getInt("UserGroupId");
    	Integer active = rs.getInt("Active");
    	Date createdDate = rs.getDate("CreatedDate");
 
        return new UserInfo(userId, fullname, username, password, gender, dateOfBirth, phone, email, address, avatarPath, userGroupId, active, createdDate);
    }
 
}