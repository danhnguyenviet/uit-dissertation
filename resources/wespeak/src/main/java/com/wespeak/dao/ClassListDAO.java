package com.wespeak.dao;

import java.util.List;

import javax.sql.DataSource;

import com.wespeak.mapper.ClassListMapper;
import com.wespeak.model.ClassList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class ClassListDAO extends JdbcDaoSupport {

	@Autowired
	public ClassListDAO(DataSource dataSource) {
		this.setDataSource(dataSource);
	}

	public ClassList findClassList(String userName) {
		String sql = "Select u.ClassId,u.StartDate,u.EndDate,u.TeacherId"//
				+ " from Classes u";

		Object[] params = new Object[] { userName };
		ClassListMapper mapper = new ClassListMapper();
		try {
			ClassList classList = this.getJdbcTemplate().queryForObject(sql, params, mapper);
			return classList;
		} catch (EmptyResultDataAccessException e) {
			return null;
		}
	}

	public List<ClassList> listClassList() {
		String sql = "Select u.ClassId, u.ClassName,u.StartDate,u.EndDate,u.TeacherId, v.FullName"//
				+ " from Classes u, Users v where v.UserId=u.TeacherId";

		Object[] params = new Object[] {};
		ClassListMapper mapper = new ClassListMapper();
		try {
			List<ClassList> list = this.getJdbcTemplate().query(sql, params, mapper);
			return list;
		} catch (EmptyResultDataAccessException e) {
			return null;
		}
	}
}