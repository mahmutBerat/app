package com.mahmut.jba.service;

import java.util.ArrayList;
import java.util.Date;

import javax.annotation.PostConstruct;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mahmut.jba.entity.Blog;
import com.mahmut.jba.entity.Item;
import com.mahmut.jba.entity.Role;
import com.mahmut.jba.entity.User;
import com.mahmut.jba.repository.BlogRepository;
import com.mahmut.jba.repository.ItemRepository;
import com.mahmut.jba.repository.RoleRepository;
import com.mahmut.jba.repository.UserRepository;

import java.util.List;

@Transactional
@Service
public class InitDbService {

	@Autowired
	private RoleRepository roleRepository;

	@Autowired
	private UserRepository userRepository;

	@Autowired
	private BlogRepository blogRepository;

	@Autowired
	private ItemRepository itemRepository;

	@PostConstruct
	public void init() {
		Role roleUser = new Role();
		roleUser.setName("Role_User");
		roleRepository.save(roleUser);

		Role roleAdmin = new Role();
		roleAdmin.setName("Role_Admin");
		roleRepository.save(roleAdmin);

		User userAdmin = new User();
		userAdmin.setName("admin");
		List<Role> roles = new ArrayList<Role>();
		roles.add(roleAdmin);
		roles.add(roleUser);
		userAdmin.setRoles(roles);
		userRepository.save(userAdmin);
		
		Blog blogJavavids = new Blog();
		blogJavavids.setName("JavaVids");
		blogJavavids.setUrl("http://www.google.com2"); //this should be rss feed
		blogJavavids.setUser(userAdmin);
		blogRepository.save(blogJavavids);

		Item item1 = new Item();
		item1.setTitle("first");
		item1.setLink("http://www.google.com");
		item1.setPublishedDate(new Date());
		item1.setBlog(blogJavavids);
		itemRepository.save(item1);

		Item item2 = new Item();
		item2.setBlog(blogJavavids);
		item2.setTitle("second");
		item2.setLink("http://www.google.com");
		item2.setPublishedDate(new Date());
		itemRepository.save(item2);
	
	}

}
