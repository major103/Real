package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import dao.GradeDao;
import vo.GradeVo;

@Controller
@RequestMapping("/grade/")
public class GradeController {

	@Autowired
	HttpServletRequest request;
	
	@Autowired
	HttpSession session;
	
	GradeDao grade_dao;

	public void setGrade_dao(GradeDao grade_dao) {
		this.grade_dao = grade_dao;
	}
	
	@RequestMapping("insert_form.do")
	public String insert_form() {
		
		return "grade/grade_insert_form";
	}
	
	@RequestMapping("insert.do")
	public String insert(GradeVo vo) {
		
		return "redirect:list.do";
	}
	
	@RequestMapping("delete.do")
	public String delete(int g_index) {
		
		return "redirect:list.do";
	}
	
	@RequestMapping("modify_form.do")
	public String modify_form(int g_index) {
		
		return "grade/grade_modify_form";
	}
	
	@RequestMapping("modify_do")
	public String modify(GradeVo vo) {
		
		return "";
	}
}
