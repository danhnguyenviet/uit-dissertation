package com.wespeak.dao.impl;

import java.util.List;

import javax.sql.DataSource;
 
import com.wespeak.dao.UserInfoDAO;
import com.wespeak.mapper.UserInfoMapper;
import com.wespeak.model.UserInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
 
@Service
@Transactional
public class UserInfoDAOImpl extends JdbcDaoSupport implements UserInfoDAO {
 
    @Autowired
    public UserInfoDAOImpl(DataSource dataSource) {
        this.setDataSource(dataSource);
    }
  
 
    public UserInfo findUserInfo(String userName) {
        //String sql = "Select u.Username,u.Password "//
        //        + " from Users u where u.Username = ? ";
        String sql = "Select * "//
                + " from Users u where u.Username = ? ";
 
        Object[] params = new Object[] { userName };
        UserInfoMapper mapper = new UserInfoMapper();
        try {
            UserInfo userInfo = this.getJdbcTemplate().queryForObject(sql, params, mapper);
            return userInfo;
        } catch (EmptyResultDataAccessException e) {
            return null;
        }
    }
 
 
    public List<String> getUserRoles(String userName) {
        String sql = "Select r.UserGroupName "//
                + " from usergroups r INNER JOIN users u ON r.UserGroupId=u.UserId "
                + "where u.Username = ? ";
         
        Object[] params = new Object[] { userName };
         
        List<String> roles = this.getJdbcTemplate().queryForList(sql,params, String.class);
         
        return roles;
    }
     
}