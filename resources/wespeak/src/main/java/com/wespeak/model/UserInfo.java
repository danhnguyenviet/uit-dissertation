package com.wespeak.model;

import java.sql.Date;

public class UserInfo {
	
	private Integer userId;
	private String fullname;
	private String username;
	private String password;
	private String gender;
	private Date dateOfBirth;
	private String phone;
	private String email;
	private String address;
	private String avatarPath;
	private Integer userGroupId;
	private Integer active;
	private Date createdDate;
	
	public UserInfo() {
		super();
	}

	public UserInfo(String username, String password) {
		super();
		this.username = username;
		this.password = password;
	}

	public UserInfo(Integer userId, String fullname, String username, String password, String gender, Date dateOfBirth,
			String phone, String email, String address, String avatarPath, Integer userGroupId, Integer active,
			Date createdDate) {
		super();
		this.userId = userId;
		this.fullname = fullname;
		this.username = username;
		this.password = password;
		this.gender = gender;
		this.dateOfBirth = dateOfBirth;
		this.phone = phone;
		this.email = email;
		this.address = address;
		this.avatarPath = avatarPath;
		this.userGroupId = userGroupId;
		this.active = active;
		this.createdDate = createdDate;
	}

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public String getFullname() {
		return fullname;
	}

	public void setFullname(String fullname) {
		this.fullname = fullname;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public Date getDateOfBirth() {
		return dateOfBirth;
	}

	public void setDateOfBirth(Date dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getAvatarPath() {
		return avatarPath;
	}

	public void setAvatarPath(String avatarPath) {
		this.avatarPath = avatarPath;
	}

	public Integer getUserGroupId() {
		return userGroupId;
	}

	public void setUserGroupId(Integer userGroupId) {
		this.userGroupId = userGroupId;
	}

	public Integer getActive() {
		return active;
	}

	public void setActive(Integer active) {
		this.active = active;
	}

	public Date getCreatedDate() {
		return createdDate;
	}

	public void setCreatedDate(Date createdDate) {
		this.createdDate = createdDate;
	}
	
}
