package com.cafe24.pjmall.controller;

import java.util.List;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.client.RestTemplate;

import com.cafe24.pjmall.util.JsonTrans;
import com.cafe24.pjmall.vo.ProductVo;
import com.google.gson.Gson;
import com.google.gson.JsonObject;

@Controller
public class MainController {
	private JsonTrans jsonTrans = new JsonTrans();
	private RestTemplate restTemplate = new RestTemplate();
	
	@RequestMapping( {"/", "/main"} )
	public String main(Model model) {
		ProductVo productVo = new ProductVo();
		ResponseEntity<String> obj = restTemplate.postForEntity("http://localhost:8080/server/api/product/list",productVo ,String.class);
		JsonObject json = jsonTrans.StringToJson(obj.getBody());
		List li = new Gson().fromJson(json.get("data"), List.class);
		model.addAttribute("productList", li);
		return "main/index";
	}
}
