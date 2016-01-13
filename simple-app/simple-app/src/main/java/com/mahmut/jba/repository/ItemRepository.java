package com.mahmut.jba.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.mahmut.jba.entity.Blog;
import com.mahmut.jba.entity.Item;

public interface ItemRepository extends JpaRepository<Item, Integer>{

	List<Item> findByBlog(Blog blog);
}
