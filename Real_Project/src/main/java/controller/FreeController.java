package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import dao.FreeDao;
import vo.FreeVo;

@Controller
@RequestMapping("/free/")
public class FreeController {

	@Autowired
	HttpServletRequest request;
	
	@Autowired
	HttpSession session;
	
	FreeDao free_dao;

	public void setFree_dao(FreeDao free_dao) {
		this.free_dao = free_dao;
	}
	
	@RequestMapping("list.do")
	public String list() {
		
		return "free/free_list";
	}
	
	@RequestMapping("view.do")
	public String view() {
		
		return "free/free_view";
	}
	
	@RequestMapping("insert_form.do")
	public String insert_form() {
		
		return "free/free_insert_form";
	}
	
	@RequestMapping("insert.do")
	public String insert(FreeVo vo) {
		
		return "redirect:list.do";
	}
	
	@RequestMapping("delete.do")
	public String delete(int free_index) throws Exception {
		
		int res = free_dao.delete(free_index);
		
		return "redirect:list.do";
	}
	
	@RequestMapping("modify_form.do")
	public String modify_form(int free_index) {
		
		return "free/free_modify_form";
	}
	
	@RequestMapping("modify.do")
	public String modify(FreeVo vo) {
		
		return "redirect:view.do";
	}
	
}
