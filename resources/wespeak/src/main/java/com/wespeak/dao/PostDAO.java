package com.wespeak.dao;

import com.wespeak.model.Post;

public interface PostDAO {
	
	public Post getAllActivePosts(String username);

}
