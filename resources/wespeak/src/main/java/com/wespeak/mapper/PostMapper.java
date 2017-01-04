package com.wespeak.mapper;

import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.wespeak.model.Post;

public class PostMapper implements RowMapper<Post> {

	public Post mapRow(ResultSet rs, int rowNum) throws SQLException {
		Integer postId = rs.getInt("PostId");
		String title = rs.getString("Title");
		String content = rs.getString("Content");
		Integer active = rs.getInt("Active");
		Integer authorId = rs.getInt("AuthorId");
		Integer lastModifiedUserId = rs.getInt("LastModifiedUserId");
		Date modified = rs.getDate("Modified");
		String briefDescription = rs.getString("BriefDescription");
		String postImagePath = rs.getString("PostImagePath");
		
		return new Post(postId, title, content, active, authorId, 
				lastModifiedUserId, modified, briefDescription, postImagePath);
	}
	
}
