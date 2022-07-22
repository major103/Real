package controller;

import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import service.AdminService;
import vo.CarVo;
import vo.ChattingVo;
import vo.CompanyVo;
import vo.EstimateVo;
import vo.FreeVo;
import vo.GradeVo;
import vo.NewsVo;
import vo.RecommendVo;
import vo.ReplyVo;
import vo.UserVo;
import vo.WithdrawVo;



@Controller
@RequestMapping("/admin/")
public class AdminController {
	
	@Autowired
	HttpServletRequest request;
	
	@Autowired
	HttpSession session;
	
	@Autowired
	ServletContext application;
	
	AdminService admin_service;

	public void setAdmin_service(AdminService admin_service) {
		this.admin_service = admin_service;
	}
	

	@RequestMapping("car_list.do")
	public String carList(Model model) {
		
		Map map = admin_service.car_List();
		model.addAttribute("map",map);
		
		return "admin/car/car_list";
	}
	
	@RequestMapping("chatting_list.do")
	public String chattingList(Model model) {
		Map map = admin_service.chatting_List();
		
		model.addAttribute("map", map);
		
		return "admin/chatting/chatting_list";
	}
	
	@RequestMapping("company_list.do")
	public String companyList(Model model) {
		Map map = admin_service.company_List();
		
		model.addAttribute("map", map);
		
		return "admin/company/company_list";
	}
	
	@RequestMapping("estimate_list.do")
	public String estimateList(Model model) {
		Map map = admin_service.estimate_List();
		
		model.addAttribute("map", map);
		
		return "admin/estimate/estimate_list";
	}
	
	@RequestMapping("free_list.do")
	public String freeList(Model model) {
		Map map = admin_service.free_List();
		
		model.addAttribute("map", map);
		
		return "admin/free/free_list";
	}



	@RequestMapping("grade_list.do")
	public String gradeList(Model model) {
		Map map = admin_service.grade_List();
		
		model.addAttribute("map", map);
		
		return "admin/grade/grade_list";
	}



	@RequestMapping("news_list.do")
	public String newsList(Model model) {
		Map map = admin_service.news_List();
		
		model.addAttribute("map", map);
		
		return "admin/news/news_list";
	}
	
	@RequestMapping("recommend_list.do")
	public String recommendList(Model model) {
		Map map = admin_service.recommend_List();
		
		model.addAttribute("map", map);
		
		return "admin/recommend/recommend_list";
	}
	
	@RequestMapping("reply_list.do")
	public String replyList(Model model) {
		Map map = admin_service.reply_List();
		
		model.addAttribute("map", map);
		
		return "admin/reply/reply_list";
	}



	@RequestMapping("user_list.do")
	public String userList(Model model) {
		Map map = admin_service.user_List();
		
		model.addAttribute("map",map);
		return "admin/user/user_list";
	}
	
	
	@RequestMapping("withdraw_list.do")
	public String withdrawList(Model model) {
		Map map = admin_service.withdraw_List();
		
		model.addAttribute("map", map);
		
		return "admin/withdraw/withdraw_list";
	}
	
	@RequestMapping("car_insert_form.do")
	public String carInsertForm(Model model) {
		
		Map map = admin_service.company_List();
		model.addAttribute("map",map);
		return "admin/car/car_insert_form";
	}
	
	
	
	@RequestMapping("car_insert.do")
	public String carInsert(CarVo vo) throws Exception {
		
		admin_service.car_insert(vo);
		
		
		return "redirect:car_list.do";
	}
	
	
	@RequestMapping("car_modify_form.do")
	public String carModifyForm(int car_index,Model model) {
		
		CarVo vo = admin_service.car_selectOne(car_index);
		Map map = admin_service.company_List();
		
		model.addAttribute("vo",vo);
		model.addAttribute("map",map);
		
		return "admin/car/car_modify_form";
	}
	
	@RequestMapping("car_modify.do")
	public String carModify(CarVo vo) throws Exception {
		
		admin_service.car_update(vo);
		
		return "redirect:car_list.do";
	}
	
	
	@RequestMapping("car_delete.do")
	public String carDelete(int car_index) throws Exception {
		
		admin_service.car_delete(car_index);
		
		return "redirect:car_list.do";
	}
	
	
	@RequestMapping("chatting_insert_form.do")
	public String chattingInsertForm(Model model) {
		
		return "admin/chatting/chatting_insert_form";
	}

	
	@RequestMapping("chatting_insert.do")
	public String chattingInsert(ChattingVo vo) throws Exception {
		
		String c_ip = request.getRemoteAddr();
		UserVo user = admin_service.user_selectOne();
		vo.setC_ip(c_ip);
		
		
		admin_service.chatting_insert(vo);
		
		return "redirect:chatting_list.do";
	}
	
	
	@RequestMapping("estimate_insert_form.do")
	public String estimateInsertForm(Model model) {
	
		return "admin/estimate/estimate_insert_form";
		
	}
	
	
	
	@RequestMapping("estimate_insert.do")
	public String estimateInsert(EstimateVo vo) throws Exception {
		
		admin_service.estimate_insert(vo);
		
		return "redirect:estimate_list.do";
	}
	
	
	@RequestMapping("company_insert_form.do")
	public String companyInsertForm() {
		
		return "admin/company/company_insert_form";
	}

	
	@RequestMapping("company_insert.do")
	public String companyInsert(CompanyVo vo) throws Exception {
		
		admin_service.company_insert(vo);
		
		return "redirect:company_list.do";
	}
	
	
	
	@RequestMapping("free_insert_form.do")
	public String freeInsertForm() {
		
		return "admin/free/free_insert_form";
	}

	
	@RequestMapping("free_insert.do")
	public String freeInsert(FreeVo vo) throws Exception {
		
		admin_service.free_insert(vo);
		
		return "redirect:free_list.do";
	}
		
	
	

	@RequestMapping("grade_insert_form.do")
	public String gradeInsertForm() {
		
		return "admin/grade/grade_insert_form";
	}

	
	@RequestMapping("grade_insert.do")
	public String gradeInsert(GradeVo vo) throws Exception {
		
		admin_service.grade_insert(vo);
		
		return "redirect:grade_list.do";
	}
	
	
	
	@RequestMapping("news_insert_form.do")
	public String newsInsertForm() {
		
		return "admin/news/news_insert_form";
	}

	
	@RequestMapping("news_insert.do")
	public String newsInsert(NewsVo vo) throws Exception {
		
		admin_service.news_insert(vo);
		
		return "redirect:news_list.do";
	}
	
	
	
	

	@RequestMapping("recommend_insert_form.do")
	public String adminRecommendInsertForm() {
		
		return "admin/recommend/recommend_insert_form";
	}

	
	@RequestMapping("recommend_insert.do")
	public String adminRecommendInsert(RecommendVo vo) throws Exception {
		
		admin_service.recommend_insert(vo);
		
		return "redirect:recommend_list.do";
	}
	
	
	
	
	@RequestMapping("reply_insert_form.do")
	public String replyInsertForm() {
		
		return "admin/reply/reply_insert_form";
	}

	
	@RequestMapping("reply_insert.do")
	public String replyInsert(ReplyVo vo) throws Exception {
		
		admin_service.reply_insert(vo);
		
		return "redirect:reply_list.do";
	}
	
	
	
	@RequestMapping("withdraw_insert_form.do")
	public String withdrawInsertForm() {
		
		return "grade/withdraw/withdraw_insert_form";
	}

	
	@RequestMapping("withdraw_insert.do")
	public String withdrawInsert(WithdrawVo vo) throws Exception {
		
		admin_service.withdraw_insert(vo);
		
		return "redirect:withdraw_list.do";
	}
	
	@RequestMapping("news_index.do")
	public String newsIndex(String news) throws Exception {
		
		return "/news/news_index";
	}
	
}
