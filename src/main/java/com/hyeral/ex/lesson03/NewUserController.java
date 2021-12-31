package com.hyeral.ex.lesson03;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hyeral.ex.lesson03.bo.NewUserBO;
import com.hyeral.ex.lesson03.model.NewUser;

@RequestMapping("/lesson04/")
@Controller
public class NewUserController {
	
	@Autowired
	private NewUserBO newUserBO;
	
	@RequestMapping("ex01/1")
	public String addUserView() {
		return "lesson04/addUser";
	}
	
	@ResponseBody
	@RequestMapping("ex01/add_user")
	public String addUesr(
			@RequestParam("name") String name,
			@RequestParam("yyyymmdd") String yyyymmdd,
			@RequestParam("introduce") String introduce,
			@RequestParam("email") String email
			) {
		
		int count = newUserBO.addUser(name, yyyymmdd, email, introduce);
		
		return "입력성공 : " + count;
	}
	
	@RequestMapping("ex01/2")
	public String getUser(Model model) {
		NewUser user = newUserBO.getUser(7);
		model.addAttribute("result", user);
		model.addAttribute("subject", "회원정보");
		
		return "lesson04/userInfo";
		
	}
	
}
