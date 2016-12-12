package com.wespeak.dao;

import java.util.List;

import com.wespeak.model.UserInfo;
 
public interface UserInfoDAO {
     
    public UserInfo findUserInfo(String userName);
     
    // [Admin, Subadmin, Student, Teacher]
    public List<String> getUserRoles(String userName);
     
}