package com.wespeak.model;

import java.util.Date;

public class Post {
	
	private Integer postId;
	private String title;
	private String content;
	private Integer active;
	private Integer authorId;
	private Integer lastModifiedUserId;
	private Date modified;
	private String briefDescription;
	private String postImagePath;
	
	public Post() {
		super();
	}

	public Post(Integer postId, String title, String content, Integer active, Integer authorId,
			Integer lastModifiedUserId, Date modified, String briefDescription, String postImagePath) {
		super();
		this.postId = postId;
		this.title = title;
		this.content = content;
		this.active = active;
		this.authorId = authorId;
		this.lastModifiedUserId = lastModifiedUserId;
		this.modified = modified;
		this.briefDescription = briefDescription;
		this.postImagePath = postImagePath;
	}

	public Integer getPostId() {
		return postId;
	}

	public void setPostId(Integer postId) {
		this.postId = postId;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Integer getActive() {
		return active;
	}

	public void setActive(Integer active) {
		this.active = active;
	}

	public Integer getAuthorId() {
		return authorId;
	}

	public void setAuthorId(Integer authorId) {
		this.authorId = authorId;
	}

	public Integer getLastModifiedUserId() {
		return lastModifiedUserId;
	}

	public void setLastModifiedUserId(Integer lastModifiedUserId) {
		this.lastModifiedUserId = lastModifiedUserId;
	}

	public Date getModified() {
		return modified;
	}

	public void setModified(Date modifiedDate) {
		this.modified = modifiedDate;
	}

	public String getBriefDescription() {
		return briefDescription;
	}

	public void setBriefDescription(String briefDescription) {
		this.briefDescription = briefDescription;
	}

	public String getPostImagePath() {
		return postImagePath;
	}

	public void setPostImagePath(String postImagePath) {
		this.postImagePath = postImagePath;
	}
}
