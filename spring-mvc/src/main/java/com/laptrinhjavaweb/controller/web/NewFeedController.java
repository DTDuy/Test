package com.laptrinhjavaweb.controller.web;


import java.io.File;
import java.time.LocalDate;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.laptrinhjavaweb.entity.Category;
import com.laptrinhjavaweb.entity.Post_X;
import com.laptrinhjavaweb.service.CategoryService;
import com.laptrinhjavaweb.service.Post_XService;

@Controller(value = "newFeedControllerOfWeb")
public class NewFeedController {
	@Autowired
	CategoryService categoryService;
	@Autowired
	Post_XService postService;
	@RequestMapping(value = "/trang-chu/newFeed", method = RequestMethod.GET)
	public String showNewFeed(Model model) {
		List<Category> listCategory = categoryService.findAll();
		model.addAttribute("listCategory", listCategory);
		List<Post_X> listPost = postService.findAll();
		model.addAttribute("listPost", listPost);
		return "web/new_feed";
	}
	@RequestMapping(value = "/trang-chu/addPost", method = RequestMethod.POST)
	public String addNewFeed(@RequestParam("title")String title,@RequestParam("shortDecription")String shortDecription,@RequestParam("content")String content,
							 @RequestParam("address")String address,@RequestParam("city")String city,
							 @RequestParam("state")String state,@RequestParam("fileThumbnail")MultipartFile fileThumbnail,
							 @RequestParam("reviewType")String reviewType,@RequestParam("fileInput")MultipartFile[] fileInput) {
		try {
			String day = "" + LocalDate.now();
			String fileThumbnailUrl = fileThumbnail.getOriginalFilename();
			File saveFileThumbnail = new File("/Users/anhnguyen/desktop/Tmp/" + fileThumbnailUrl);
			fileThumbnail.transferTo(saveFileThumbnail);
			StringBuffer sb = new StringBuffer();
			for(int i=0;i<fileInput.length;i++) {
				String fileUrl = fileInput[i].getOriginalFilename();
				File saveFile = new File("/Users/anhnguyen/desktop/Tmp/" + fileUrl);
				fileInput[i].transferTo(saveFile);
				sb.append(fileUrl);
				if(i!=fileInput.length-1)
					sb.append("|");
			}
			Post_X post = new Post_X();
			post.setTitle(title);
			post.setContent(content);
			post.setAddress(address+", "+city+", "+state);
			post.setTime_post(day);
			post.setShortDecription(shortDecription);
			post.setCategory_id(categoryService.findByName(reviewType).getId());
			post.setImgThumbnail(fileThumbnailUrl);
			post.setImgPost(sb.toString());
			postService.save(post);
		} catch (Exception e) {

		}
		return "redirect:/trang-chu/newFeed";
	}
	@RequestMapping(value = "/trang-chu/showPostDetail", method = RequestMethod.GET)
	public String showPostDetail(@Param("id")long id) {
		return "web/post_detail";
	}
}
