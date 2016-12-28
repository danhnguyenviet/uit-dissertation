package com.wespeak.dao.impl;

import java.util.List;

import javax.sql.DataSource;

import com.wespeak.dao.UserInfoDAO;
import com.wespeak.mapper.UserInfoMapper;
import com.wespeak.model.PronunciationResultsModel;
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
		// String sql = "Select u.Username,u.Password "//
		// + " from Users u where u.Username = ? ";
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
				+ " from usergroups r INNER JOIN users u ON r.UserGroupId=u.UserId " + "where u.Username = ? ";

		Object[] params = new Object[] { userName };

		List<String> roles = this.getJdbcTemplate().queryForList(sql, params, String.class);

		return roles;
	}

	@Override
	public List<Integer> getLevelPointsList(String username) {
		String sql = "select usd.Scores " + " from userscoredetails usd "
				+ " inner join userscores us on usd.UserScoreId = us.UserScoreId "
				+ " inner join users u on u.UserId  = us.UserId " + " where u.Username = ? ";
		Object[] params = new Object[] { username };
		try {
			List<Integer> levelPointsList = this.getJdbcTemplate().queryForList(sql, params, Integer.class);
			return levelPointsList;
		} catch (EmptyResultDataAccessException e) {
			return null;
		}
	}

	@Override
	public void savePronuncitaionResults(PronunciationResultsModel prm) {
		
		String sql = "UPDATE userscoredetails usd "
                + " inner join userscores us on us.UserScoreId=usd.UserScoreId "
				+ " inner join users u on u.UserId=us.UserId "
                + " where u.Username=? and usd.LevelId=? "
				+ " set usd.Scores=?";
		Object[] params = new Object[] { prm.getUsername(), prm.getLevelId(), prm.getPoints() };
		try {
			this.getJdbcTemplate().update(sql, params);
		} catch (Exception e) {
			return;
		}
		
	}
}