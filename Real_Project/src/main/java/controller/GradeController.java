package controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	
	@RequestMapping("list.do")
	public String list(Model model) {
		
		List<GradeVo> list = grade_dao.selectList();
		
		model.addAttribute("list", list);
		
		return "grade/grade_list";
	}
	
	@RequestMapping("insert_form.do")
	public String insert_form() {
		
		return "grade/grade_insert_form";
	}
	
	@RequestMapping("insert.do")
	public String insert(GradeVo vo, Model model) {
		if(session.getAttribute("user")==null) {
			
			model.addAttribute("reason", "session_timeout");
			
			return "redirect:../user/login_form.do";
		}
		
		int res = grade_dao.insert(vo);
		
		return "redirect:list.do";
	}
	
	@RequestMapping("delete.do")
	public String delete(int g_index) {
		
		int res = grade_dao.delete(g_index);
		
		return "redirect:list.do";
	}
	
	@RequestMapping("modify_form.do")
	public String modify_form(int g_index, Model model) {
		
		GradeVo  vo = grade_dao.selectOne(g_index);
		
		model.addAttribute("vo", vo);
		
		return "grade/grade_modify_form";
	}
	
	@RequestMapping("modify_do")
	public String modify(GradeVo vo, Model model) {
		
		if(session.getAttribute("user")==null) {
			
			model.addAttribute("reason", "session_timeout");
			
			return "redirect:../user/login_form.do";
		}
		int res = grade_dao.update(vo);
		
		return "redirect:list.do";
	}
}
