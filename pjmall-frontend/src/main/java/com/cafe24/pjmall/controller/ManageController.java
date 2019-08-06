package com.cafe24.pjmall.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.http.ResponseEntity;
import org.springframework.http.converter.HttpMessageConverter;
import org.springframework.http.converter.json.MappingJackson2HttpMessageConverter;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.client.RestTemplate;

import com.cafe24.pjmall.util.JsonTrans;
import com.cafe24.pjmall.vo.UserVo;
import com.google.gson.Gson;
import com.google.gson.JsonObject;

@Controller
@RequestMapping("/manage")
public class ManageController {
	JsonTrans jsonTrans = new JsonTrans();
	RestTemplate restTemplate = new RestTemplate();
	
	@RequestMapping( {"", "/user","/"} )
	public String userList(HttpSession session, Model model) {		
		ResponseEntity<String> obj = restTemplate.getForEntity("http://localhost:8080/server/api/user/userList", String.class);

		JsonObject json = jsonTrans.StringToJson(obj.getBody());
		Gson gson = new Gson();
		List li = gson.fromJson(json.get("data"), List.class);
		
		//여기에 자료 담아서 뷰표시~
		
		
		
		return "manage/userList";
	}
}
