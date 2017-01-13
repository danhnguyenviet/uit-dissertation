package com.wespeak.dao;

import java.util.List;

import javax.sql.DataSource;

import com.wespeak.mapper.PostMapper;
import com.wespeak.model.Post;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
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

	public List<Post> listPostActive(int active) {
		String sql = "Select *"//
				+ " from posts u " + "where u.Active =" + active;

		Object[] params = new Object[] {};
		PostMapper mapper = new PostMapper();
		try {
			List<Post> list = this.getJdbcTemplate().query(sql, params, mapper);
			return list;
		} catch (EmptyResultDataAccessException e) {
			return null;
		}
	}

	public void updatePostActive(Integer postId, int active) {
		String sql = "UPDATE posts SET Active = " + active//
				+ " where postId=" + postId;

		try {
			this.getJdbcTemplate().update(sql);
		} catch (EmptyResultDataAccessException e) {
			return;
		}
	}
	
	public List<Post> findAllPostsByUsername(String username) {
		 String sql = "select p.PostId, p.Title, p.Content, p.Active, p.AuthorId, p.LastModifiedUserId, "
		 + " p.Modified, p.BriefDescription, p.PostImagePath "
		 + " from posts p, users u where u.UserId=p.AuthorId and u.Username=?";

		Object[] args = new Object[] { username };
		PostMapper mapper = new PostMapper();
		try {
			List<Post> postList = this.getJdbcTemplate().query(sql, args, mapper);
			return postList;
		} catch (DataAccessException e) {
			System.out.println(e.toString());
			return null;
		}
	}
	
	public void deletePostById(Integer postId) {
		String sql = "DELETE FROM posts WHERE PostId = ?";
		
		Object[] args = new Object[] { postId };
		try {
			this.getJdbcTemplate().update(sql, args);
		} catch (RuntimeException runtimeException) {
			System.err.println("***NagiosHostDao::deleteObject, RuntimeException occurred, message follows.");
	        System.err.println(runtimeException);
	        throw runtimeException;
		}
	}
	
	public void savePost(Post post) {
		String sql = "INSERT INTO posts (`PostId`, `Title`, `Content`, `Active`, `AuthorId`, `LastModifiedUserId`, `Modified`, `BriefDescription`, `PostImagePath`) "
				+ " VALUES (NULL, ?, ?, 0, ?, ?, ?, NULL, ?);";
		
		Object[] args = new Object[] { post.getTitle(), post.getContent(), post.getAuthorId(),
				post.getLastModifiedUserId(), post.getModified(), post.getPostImagePath()};
		
		try {
			this.getJdbcTemplate().update(sql, args);
		} catch (RuntimeException runtimeException) {
	        System.err.println(runtimeException);
	        throw runtimeException;
		}
	}
}