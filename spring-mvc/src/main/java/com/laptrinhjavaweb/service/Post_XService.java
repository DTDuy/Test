package com.laptrinhjavaweb.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.laptrinhjavaweb.entity.Post_X;
import com.laptrinhjavaweb.repository.Post_XRepository;

@Service
public class Post_XService {
	@Autowired
	Post_XRepository postRepo;

	public void save(Post_X post) {
		postRepo.save(post);
	}
	public List<Post_X> findAll(){
		return postRepo.findAll();
	}
}
