package com.hyeral.ex.lesson05;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class Lesson05Controller {

	@GetMapping("/lesson05/ex01")
	public String ex01() {
		return "lesson05/ex01";
		
	}
	
	@GetMapping("lesson05/ex02")
	public String ex02(Model model) {
		
		List<String> fruits = new ArrayList<>();
		fruits.add("apple");
		fruits.add("banana");
		fruits.add("melon");
		fruits.add("peach");
		fruits.add("grape");
		
		model.addAttribute("fruits", fruits);
		
		List<Map<String, Object>> users = new ArrayList<>();
		Map<String, Object> map = new HashMap<>();
		map.put("name", "박혜경");
		map.put("age", 29);
		map.put("hobby", "댄스");
		users.add(map);
		
		map = new HashMap<>();
		map.put("name", "박솜탱");
		map.put("age", 4);
		map.put("hobby", "산책");
		users.add(map);
		
		model.addAttribute("users", users);
		
		return "lesson05/ex02";
	}
	
	@GetMapping("/lesson05/ex03")
	public String ex03()
	{
		return "lesson05/ex03";
	}
	
	
}
