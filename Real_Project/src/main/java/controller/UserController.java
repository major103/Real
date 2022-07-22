package controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import dao.UserDao;
import vo.UserVo;

@Controller
@RequestMapping("/user/")
public class UserController {

	@Autowired
	HttpServletRequest request;
	
	@Autowired
	HttpSession session;
	
	@Autowired
	ServletContext application;
	
	UserDao user_dao;

	public void setUser_dao(UserDao user_dao) {
		this.user_dao = user_dao;
	}
	
	
	@RequestMapping("id_find.do")
	public String id_find() {
		
		return "user/id_find";
	}
	
	@RequestMapping("pwd_find.do")
	public String pwd_find() {
		
		return "user/pwd_find";
	}
	
	@RequestMapping("login.do")
	public String login(String u_id, String u_pwd,
						@RequestParam(value="url", required=false, defaultValue="no url")String url,
						Model model) {
		
		UserVo user = user_dao.selectOne(u_id);
		
		//u_id체크
		if(user==null) {
			//Session Tracking
			//response.sendRedirect("login_form.do?reason=fail_id");
			
			//model을 통해서 DS로 전달된데이터는 redirect시에는 parameter로 처리 
			model.addAttribute("reason", "fail_id");
			return "redirect:login_form.do";
		}
		
		//u_pwd체크
		if(user.getU_pwd().equals(u_pwd)==false) {
			//Session Tracking
			//response.sendRedirect("login_form.do?reason=fail_pwd&m_id=" + m_id);
			model.addAttribute("reason", "fail_pwd");
			model.addAttribute("u_id", u_id);
			return "redirect:login_form.do";
		}
			
		//로그인정보 세션에 넣기
		session.setAttribute("user", user);	
		
		//메인페이지 이동(URL)
		//현재경로 :             /member/login.do
		if(url.equals("no_url")) {		
		   return "redirect:../board/list.do";
		}
		
		//url이 있으면 해당 url로 이동해라..
		return "redirect:" + url;
	}
	
	@RequestMapping("login_form.do")
	public String login_form() {
		
		return "user/user_login_form";
	}
	
	@RequestMapping("logout.do")
	public String logout() {
		
		//세션에 user정보를 삭제
		session.removeAttribute("user");
				
		return "redirect:../list.do";
	}
	
	@RequestMapping("id_find_phone.do")
	public String id_find_phone(String name, String phone_front, String phone_center, String phone_end, HttpServletRequest request) {
		
		String u_phone = phone_front + "-" + phone_center + "-" + phone_end;
		
		Map map = new HashMap();
		
		map.put("name", name);
		map.put("u_phone", u_phone);
		
		UserVo user = user_dao.selectOne1(map);
		
		request.setAttribute("user", user);
		
		return "user/id_find_phone";
	}
	
	@RequestMapping("id_find_email.do")
	public String id_find_email(String name1, String p_email_f, String p_email_b, HttpServletRequest request) {
		
		String u_email = p_email_f + "@" + p_email_b;
		
		Map map = new HashMap();
		
		map.put("name1", name1);
		map.put("u_email", u_email);
		
		UserVo user = user_dao.selectOne2(map);
		
		request.setAttribute("user", user);
		
		return "user/id_find_email";
	}
	
	@RequestMapping("pwd_find_process.do")
	public String pwd_find_process(String id, String name, String phone_front, String phone_center, String phone_end, HttpServletRequest request) {
		
		String u_phone = phone_front + "-" + phone_center + "-" + phone_end;
		
		Map map = new HashMap();
		
		map.put("id", id);
		map.put("name", name);
		map.put("u_phone", u_phone);	
		
		UserVo user = user_dao.selectOne3(map);
		
		request.setAttribute("user", user);
		
		return "user/pwd_find_process";
	}
	
	@RequestMapping("pwd_find_result.do")
	public String pwd_find_process(String new_pwd, HttpServletRequest request) {
		
		UserVo user = user_dao.update(new_pwd);
		
		request.setAttribute("user", user);
		
		return "user/pwd_find_result";
	}
	
	
		
	
	
	
	
}
