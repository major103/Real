package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

	@RequestMapping("/main.do")
	public String main() {
		
		return "main/list";
	}
	
	@RequestMapping("/news.do")
	public String news() {
		
		return "news/list";
	}
	
	@RequestMapping("/free.do")
	public String free() {
		
		return "free/free_list";
	}
	
	@RequestMapping("/grade.do")
	public String grade() {
		
		return "grade/grade_list";
	}
	
}
