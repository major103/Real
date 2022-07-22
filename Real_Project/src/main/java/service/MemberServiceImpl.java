package service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import dao.CarDao;
import dao.ChattingDao;
import dao.CompanyDao;
import dao.EstimateDao;
import dao.FreeDao;
import dao.GradeDao;
import dao.NewsDao;
import dao.RecommendDao;
import dao.ReplyDao;
import dao.UserDao;
import dao.WithdrawDao;
import vo.CarVo;
import vo.ChattingVo;
import vo.CompanyVo;
import vo.EstimateVo;
import vo.FreeVo;
import vo.GradeVo;
import vo.NewsVo;
import vo.RecommendVo;
import vo.ReplyVo;

public class MemberServiceImpl implements MemberService{

	CarDao  	car_dao;
	ChattingDao chatting_dao;
	CompanyDao 	company_dao;
	EstimateDao	estimate_dao;
	FreeDao 	free_dao;
	GradeDao 	grade_dao;
	NewsDao 	news_dao;
	RecommendDao recommend_dao;
	ReplyDao 	reply_dao;
	UserDao 	user_dao;
	WithdrawDao	withdraw_dao;
	
	public MemberServiceImpl(CarDao car_dao, ChattingDao chatting_dao, CompanyDao company_dao, EstimateDao estimate_dao,
			FreeDao free_dao, GradeDao grade_dao, NewsDao news_dao, RecommendDao recommend_dao, ReplyDao reply_dao,
			UserDao user_dao, WithdrawDao withdraw_dao) {
		super();
		this.car_dao = car_dao;
		this.chatting_dao = chatting_dao;
		this.company_dao = company_dao;
		this.estimate_dao = estimate_dao;
		this.free_dao = free_dao;
		this.grade_dao = grade_dao;
		this.news_dao = news_dao;
		this.recommend_dao = recommend_dao;
		this.reply_dao = reply_dao;
		this.user_dao = user_dao;
		this.withdraw_dao = withdraw_dao;
	}
	
	@Override
	public Map car_List() {
		// TODO Auto-generated method stub
		List<CarVo> car_list = car_dao.list();
		
		Map map = new HashMap();
		map.put("car_list", car_list);
		
		return map;
	}





	@Override
	public Map chatting_List() {
		// TODO Auto-generated method stub
		List<ChattingVo> chatting_list = chatting_dao.list();
		
		Map map = new HashMap();
		map.put("chatting_list", chatting_list);
		return map;
	}





	@Override
	public Map company_List() {
		// TODO Auto-generated method stub
		List<CompanyVo> company_list = company_dao.list();
		
		Map map = new HashMap();
		map.put("company_list", company_list);
		
		return map;
	}





	@Override
	public Map estimate_List() {
		// TODO Auto-generated method stub
		List<EstimateVo> estimate_list = estimate_dao.list();
		
		Map map = new HashMap();
		map.put("estimate_list", estimate_list);
		return map;
	}





	@Override
	public Map free_List() {
		// TODO Auto-generated method stub
		List<FreeVo> free_list = free_dao.list();
		
		Map map = new HashMap();
		map.put("free_list", free_list);
		
		return map;
	}





	@Override
	public Map grade_List() {
		// TODO Auto-generated method stub
		
		List<GradeVo> grade_list = grade_dao.list();
		
		Map map = new HashMap();
		map.put("grade_list", grade_list);
		return map;
	}





	@Override
	public Map news_List() {
		// TODO Auto-generated method stub
		
		List<NewsVo> news_list = news_dao.list();
		
		Map map = new HashMap();
		map.put("news_list", news_list);
		return map;
	}





	@Override
	public Map recommend_List() {
		// TODO Auto-generated method stub

		List<RecommendVo> recommend_list = recommend_dao.list();
		
		Map map = new HashMap();
		map.put("recommend_list", recommend_list);
		return map;
	}





	@Override
	public Map reply_List() {
		// TODO Auto-generated method stub
		
		List<ReplyVo> reply_list = reply_dao.list();
		
		Map map = new HashMap();
		map.put("reply_list", reply_list);
		return map;
	}


	
}
