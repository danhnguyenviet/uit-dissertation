package com.wespeak.dao;

import java.util.List;

import com.wespeak.model.Post;

public interface PostDAO {
	
	public Post getAllActivePosts(String username);

}
