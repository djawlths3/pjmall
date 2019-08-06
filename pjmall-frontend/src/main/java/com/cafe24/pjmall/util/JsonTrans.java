package com.cafe24.pjmall.util;

import java.io.UnsupportedEncodingException;

import org.springframework.test.web.servlet.MvcResult;

import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

public class JsonTrans {
	
	public static JsonObject StringToJson(String json) {
		JsonParser parser = new JsonParser();
		JsonElement element = parser.parse(json);
		JsonObject elementData = element.getAsJsonObject();
		return elementData;
	}
	

	public static JsonObject StringToArray(String json) {
		JsonParser parser = new JsonParser();
		JsonElement element = parser.parse(json);
		JsonObject elementData = element.getAsJsonObject();
		return elementData;
	}
}
