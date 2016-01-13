package com.mahmut.jba.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.mahmut.jba.entity.Blog;
import com.mahmut.jba.entity.User;

public interface BlogRepository extends JpaRepository<Blog, Integer>{

	List<Blog> findByUser(User user);
}
