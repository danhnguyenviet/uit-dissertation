package com.wespeak.mapper;

import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.wespeak.model.Post;

import org.springframework.jdbc.core.RowMapper;

public class PostMapper implements RowMapper<Post> {

	@Override
	public Post mapRow(ResultSet rs, int rowNum) throws SQLException {
		Integer postId = rs.getInt("postId");
		String title = rs.getString("title");
		String content = rs.getString("content");
		Integer active = rs.getInt("active");
		Integer authorId = rs.getInt("authorId");
		Integer lastModifiedUserId = rs.getInt("lastModifiedUserId");
		Date modified = rs.getDate("modified");
		String briefDescription = rs.getString("briefDescription");
		String postImagePath = rs.getString("postImagePath");

		return new Post(postId, title, content, active, authorId, lastModifiedUserId, modified, briefDescription, postImagePath);
	}

}