package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

	
<<<<<<< HEAD
	
=======
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
>>>>>>> 585ca4921a6992fd90f34540d91d54ea5d7bd6fc
	
}
