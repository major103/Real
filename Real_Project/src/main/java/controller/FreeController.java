package controller;

import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import dao.FreeDao;
import vo.FreeVo;
import vo.UserVo;

@Controller
@RequestMapping("/free/")
public class FreeController {

	@Autowired
	HttpServletRequest request;
	
	@Autowired
	HttpSession session;
	
	@Autowired
	ServletContext application;
	
	FreeDao free_dao;

	public void setFree_dao(FreeDao free_dao) {
		this.free_dao = free_dao;
	}
	
	@RequestMapping("list.do")
	public String list(Model model) {
		
		List<FreeVo> list = free_dao.list();
		
		model.addAttribute("list", list);
		
		return "free/free_list";
	}
	
	@RequestMapping("view.do")
	public String view(int free_index, Model model) {
		
		FreeVo vo = free_dao.selectOne(free_index);
		
		model.addAttribute("vo", vo);
		
		return "free/free_view";
	}
	
	@RequestMapping("insert_form.do")
	public String insert_form() {
		
		return "free/free_insert_form";
	}
	
	@RequestMapping("insert.do")
	public String insert(FreeVo vo, Model model) {
		
		if(session.getAttribute("user")==null) {
			
			model.addAttribute("reason", "session_timeout");
			
			return "redirect:../user/login_form.do";
		}
		
		int res = free_dao.insert(vo);
		
		return "redirect:list.do";
	}
	
	@RequestMapping("delete.do")
	public String delete(int free_index) {
		
		int res = free_dao.delete(free_index);
		
		return "redirect:list.do";
	}
	
	@RequestMapping("modify_form.do")
	public String modify_form(int free_index, Model model) {
		
		FreeVo vo = free_dao.selectOne(free_index);
		
		model.addAttribute("vo", vo);
		
		return "free/free_modify_form";
	}
	
	@RequestMapping("modify.do")
	public String modify(FreeVo vo) {
		
		int res = free_dao.update(vo);
		
		return "redirect:view.do";
	}
	
}
