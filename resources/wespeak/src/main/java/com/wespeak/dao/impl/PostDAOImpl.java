package com.wespeak.dao.impl;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.dao.DataAccessException;
import org.springframework.dao.EmptyResultDataAccessException;

import com.wespeak.dao.PostDAO;
import com.wespeak.mapper.PostMapper;
import com.wespeak.model.Post;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.stereotype.Component;

@Component
public class PostDAOImpl extends JdbcDaoSupport implements PostDAO {
	
	@Autowired
	public PostDAOImpl(DataSource dataSource) {
		this.setDataSource(dataSource);
	}

	@Override
	public Post getAllActivePosts(String username) {
//		String sql = "select p.PostId, p.Title, p.Content, p.Active, p.AuthorId, p.LastModifiedUserId, "
//				+ " p.Modified, p.BriefDescription, p.PostImagePath "
//				+ " from posts p, users u where u.UserId=p.AuthorId and u.Username=? and p.Active=1";
//		String sql = "select p.PostId as PostId, p.Title as Title, p.Content as Content, p.Active as Active, "
//				+ " p.AuthorId as AuthorId, p.LastModifiedUserId as LastModifiedUserId, p.Modified as Modified, "
//				+ " p.BriefDescription as BriefDescription, p.PostImagePath as PostImagePath "
//				+ " from posts p, users u " 
//				+ " where u.UserId=p.AuthorId and u.Username=? and p.Active=1";
		String sql = "select * from posts p where p.PostId=?";
		Object[] args = new Object[] { 1 };
		PostMapper mapper = new PostMapper();
		try {
//			List<Post> postList = this.getJdbcTemplate().queryForList(sql, args, Post.class);
			Post postList = this.getJdbcTemplate().queryForObject(sql, args, mapper);
			return postList;
		} catch (DataAccessException e) {
			System.out.println(e.toString());
			return null;
		}
	}

}
