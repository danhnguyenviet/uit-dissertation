package com.wespeak.dao.impl;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.stereotype.Component;

import com.wespeak.dao.LevelDAO;

@Component
public class LevelDAOImpl extends JdbcDaoSupport implements LevelDAO {
	
	@Autowired
	public LevelDAOImpl(DataSource dataSource) {
		this.setDataSource(dataSource);
	}

	@Override
	public Integer getLevelPoint(Integer levelId) {

		String sql = "Select l.Points "//
				+ " from levels l where l.LevelId=?";

		Object[] params = new Object[] { levelId };
		
		try {
			Integer points = this.getJdbcTemplate().queryForObject(sql, params, Integer.class);
			return points;
		} catch (EmptyResultDataAccessException e) {
			return null;
		}
		
	}

}
