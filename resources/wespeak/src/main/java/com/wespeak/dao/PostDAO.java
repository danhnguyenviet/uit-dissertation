package com.wespeak.dao;

import java.util.List;

import javax.sql.DataSource;

import com.wespeak.mapper.PostMapper;
import com.wespeak.model.Post;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class PostDAO extends JdbcDaoSupport {

	@Autowired
	public PostDAO(DataSource dataSource) {
		this.setDataSource(dataSource);
	}

	public Post findPost(Integer postId) {
		String sql = "Select *"//
				+ " from Posts u where  u.postId=" + postId;

		Object[] params = new Object[] {};
		PostMapper mapper = new PostMapper();
		try {
			Post list = this.getJdbcTemplate().queryForObject(sql, params, mapper);
			return list;
		} catch (EmptyResultDataAccessException e) {
			return null;
		}
	}

	public List<Post> listPost() {
		String sql = "Select *"//
				+ " from posts u";

		Object[] params = new Object[] {};
		PostMapper mapper = new PostMapper();
		try {
			List<Post> list = this.getJdbcTemplate().query(sql, params, mapper);
			return list;
		} catch (EmptyResultDataAccessException e) {
			return null;
		}
	}
}