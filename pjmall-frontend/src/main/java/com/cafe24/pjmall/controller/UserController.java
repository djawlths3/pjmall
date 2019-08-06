package com.cafe24.pjmall.controller;

import javax.servlet.http.HttpSession;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.client.RestTemplate;

import com.cafe24.pjmall.util.JsonTrans;
import com.cafe24.pjmall.vo.UserVo;
import com.google.gson.JsonObject;

@Controller
@RequestMapping( "/user"  )
public class UserController {
	
	JsonTrans jsonTrans = new JsonTrans();
	
	@GetMapping( "/login" )
	public String login() {
		return "user/login";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String loginCheck(@ModelAttribute UserVo userVo, HttpSession session, Model model) {
		System.out.println(userVo.getId());
		RestTemplate restTemplate = new RestTemplate();
		ResponseEntity<String> obj = restTemplate.postForEntity("http://localhost:8080/server/api/user/login", userVo, String.class);
		JsonObject json = jsonTrans.StringToJson(obj.getBody());
		if("success".equals(json.get("result").getAsString())) {
			session.setAttribute("authUser", json.get("data"));
			return "main/index";
		}
		
		return "redirect:/user/login";
	}
}
