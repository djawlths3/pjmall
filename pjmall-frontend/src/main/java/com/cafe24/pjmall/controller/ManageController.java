package com.cafe24.pjmall.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.http.converter.HttpMessageConverter;
import org.springframework.http.converter.json.MappingJackson2HttpMessageConverter;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.multipart.MultipartFile;

import com.cafe24.pjmall.dto.JSONResult;
import com.cafe24.pjmall.service.ManageService;
import com.cafe24.pjmall.util.JsonTrans;
import com.cafe24.pjmall.vo.ProductVo;
import com.cafe24.pjmall.vo.UserVo;
import com.google.gson.Gson;
import com.google.gson.JsonObject;

@Controller
@RequestMapping("/manage")
public class ManageController {
	private JsonTrans jsonTrans = new JsonTrans();
	private RestTemplate restTemplate = new RestTemplate();
	@Autowired
	private ManageService manageService;
	
	@RequestMapping( {"", "/user","/"} )
	public String userList(HttpSession session, Model model) {		
		ResponseEntity<String> obj = restTemplate.getForEntity("http://localhost:8080/server/api/user/userList", String.class);
		JsonObject json = jsonTrans.StringToJson(obj.getBody());
		List li = new Gson().fromJson(json.get("data"), List.class);
		model.addAttribute("userList", li);		
		return "manage/userList";
	}
	
	@RequestMapping("/product")
	public String product(HttpSession session, Model model) {		
		ResponseEntity<String> obj = restTemplate.getForEntity("http://localhost:8080/server/api/category/list", String.class);
		JsonObject json = jsonTrans.StringToJson(obj.getBody());
		List li = new Gson().fromJson(json.get("data"), List.class);
		model.addAttribute("categoryList", li);		
		return "manage/product";
	}
	
	@ResponseBody
	@RequestMapping(value = "/product/add", method = RequestMethod.POST)
	public String productAdd(@RequestBody ProductVo productVo) {		
		ResponseEntity<String> obj = restTemplate.postForEntity("http://localhost:8080/server/api/product/add", productVo, String.class);		
		return obj.getBody();
	}
	
	@RequestMapping(value = "/product/photo",  method = RequestMethod.GET)
	public String photo(@RequestParam(value="productNo", required=true) String productNo, Model model) {	
		model.addAttribute("prdocutNo", productNo);		
		return "manage/photo";
	}
	
	@RequestMapping(value = "/product/photoAdd",  method = RequestMethod.POST)
	public String photoAdd(@ModelAttribute ProductVo productVo, 
			@RequestParam(value="productImg") List<MultipartFile> productImg,
			Model model) {	
		productVo.setImgOptions(manageService.fileUpload(productImg));	
		ResponseEntity<String> obj = restTemplate.postForEntity("http://localhost:8080/server/api/product/img/add", productVo, String.class);
		JsonObject json = jsonTrans.StringToJson(obj.getBody());
		if(json.get("data").getAsBoolean()) {
			return "redirect:/main";
		}
		
		return "redirect:/product/photo?productNo="+productVo.getProductNo();
	}
}
