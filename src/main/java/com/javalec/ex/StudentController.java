package com.javalec.ex;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/student")
public class StudentController {

	@RequestMapping(value = "/studentView", method = RequestMethod.GET)
	public String studentView(Student student) {
		if(student != null) {
			System.out.println(student.getName());
			student = null;
		}
		System.out.println("로딩");
		return "/student/studentView";
	}

	@RequestMapping(value = "/studentView", method = RequestMethod.POST)
	public String studentView(Student student, Model model) {

		model.addAttribute("message", "reset");
		System.out.println("등록");
		return "/student/studentView";
	}

//	@RequestMapping(value = "/delete")
//	public String studentDelete() {
//
//		return "redirect:/student/studentView";
//	}

}
