package com.hyeral.ex.lesson04;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hyeral.ex.lesson04.bo.NewStudentBO;
import com.hyeral.ex.lesson04.model.NewStudent;


@RequestMapping("/lesson04/ex02")
@Controller
public class NewStudentController {
	
	@Autowired
	private NewStudentBO newStudentBO;

	@RequestMapping("/1")
	public String addStudentView() {
		return "lesson04/addStudent";
	}
	
	@ResponseBody
//	@RequestMapping(path = "/add_student", method = RequestMethod.POST)
	@PostMapping("/add_student")
	public String addStudent(
			@ModelAttribute NewStudent student,
			Model model) {
		
		int count = newStudentBO.addStudent(student);
		
		model.addAttribute("result", student);
		
		return "lesson04/studentIfo";
	}
}
