package com.wespeak.model;

public class UserGroup {
	
	private Integer userGroupId;
	private String userGroupName;
	
	public UserGroup() {
		super();
	}

	public UserGroup(Integer userGroupId, String userGroupName) {
		super();
		this.userGroupId = userGroupId;
		this.userGroupName = userGroupName;
	}

	public Integer getUserGroupId() {
		return userGroupId;
	}

	public void setUserGroupId(Integer userGroupId) {
		this.userGroupId = userGroupId;
	}

	public String getUserGroupName() {
		return userGroupName;
	}

	public void setUserGroupName(String userGroupName) {
		this.userGroupName = userGroupName;
	}

	
}
