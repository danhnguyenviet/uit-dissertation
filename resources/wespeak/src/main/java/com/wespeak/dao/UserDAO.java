package com.wespeak.dao;

import java.util.List;

import javax.sql.DataSource;

import com.wespeak.mapper.UserMapper;
import com.wespeak.model.Users;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class UserDAO extends JdbcDaoSupport {

	@Autowired
	public UserDAO(DataSource dataSource) {
		this.setDataSource(dataSource);
	}

	public Users findClassList(String userName) {
		String sql = "Select *"//
				+ " from Users u";

		Object[] params = new Object[] { userName };
		UserMapper mapper = new UserMapper();
		try {
			Users classList = this.getJdbcTemplate().queryForObject(sql, params, mapper);
			return classList;
		} catch (EmptyResultDataAccessException e) {
			return null;
		}
	}

	public int userGroup(String userName) {
		String sql = "Select *"//
				+ " from Users u" + " where u.UserName='" + userName + "'";

		Object[] params = new Object[] {};
		UserMapper mapper = new UserMapper();
		try {
		List<Users> list = this.getJdbcTemplate().query(sql, params, mapper);
		if (list != null)
			return list.get(0).getUserGroupId();
		} catch (EmptyResultDataAccessException e) {
			return -1;
		}
		return -1;
	}
}