package com.mahmut.jba.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mahmut.jba.entity.Blog;
import com.mahmut.jba.entity.User;
import com.mahmut.jba.repository.BlogRepository;
import com.mahmut.jba.repository.UserRepository;

@Service
public class BlogService {

	@Autowired
	private BlogRepository blogRepository;

	@Autowired
	private UserRepository userRepository;

	public void save(Blog blog, String name) {
		User user = userRepository.findByName(name);
		blog.setUser(user);
		
		blogRepository.save(blog);
	}

	public void delete(int id) {
		blogRepository.delete(id);
	}

}