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
import vo.UserVo;
import vo.WithdrawVo;

public class AdminServiceImpl implements AdminService {

	CarDao car_dao;
	ChattingDao chatting_dao;
	CompanyDao company_dao;
	EstimateDao estimate_dao;
	FreeDao free_dao;
	GradeDao grade_dao;
	NewsDao news_dao;
	RecommendDao recommend_dao;
	ReplyDao reply_dao;
	UserDao user_dao;
	WithdrawDao withdraw_dao;

	public AdminServiceImpl(CarDao car_dao, ChattingDao chatting_dao, CompanyDao company_dao, EstimateDao estimate_dao,
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

	@Override
	public Map user_List() {
		// TODO Auto-generated method stub

		List<UserVo> user_list = user_dao.list();

		Map map = new HashMap();
		map.put("user_list", user_list);
		return map;
	}

	@Override
	public Map withdraw_List() {
		// TODO Auto-generated method stub

		List<WithdrawVo> withdraw_list = withdraw_dao.list();

		Map map = new HashMap();
		map.put("withdraw_list", withdraw_list);
		return map;
	}

	
	
	
	@Override
	public int car_insert(CarVo vo) throws Exception {
		// TODO Auto-generated method stub
		
		int res = car_dao.insert(vo);
		
		return res;
		
	}

	
	
	
	@Override
	public int chatting_insert(ChattingVo vo) throws Exception {
		// TODO Auto-generated method stub
		int res = chatting_dao.insert(vo);
		return res;
	}

	@Override
	public int company_insert(CompanyVo vo) throws Exception {
		// TODO Auto-generated method stub
		int res = company_dao.insert(vo);
		return res;
	}

	@Override
	public int estimate_insert(EstimateVo vo) throws Exception {
		// TODO Auto-generated method stub
		int res = estimate_dao.insert(vo);
		return res;
	}

	@Override
	public int free_insert(FreeVo vo) throws Exception {
		// TODO Auto-generated method stub
		int res = free_dao.insert(vo);
		return res;
	}

	@Override
	public int grade_insert(GradeVo vo) throws Exception {
		// TODO Auto-generated method stub
		int res = grade_dao.insert(vo);
		return res;
	}

	@Override
	public int news_insert(NewsVo vo) throws Exception {
		// TODO Auto-generated method stub
		int res = news_dao.insert(vo);
		return res;
	}

	@Override
	public int recommend_insert(RecommendVo vo) throws Exception {
		// TODO Auto-generated method stub
		int res = recommend_dao.insert(vo);
		return res;
	}

	@Override
	public int reply_insert(ReplyVo vo) throws Exception {
		// TODO Auto-generated method stub
		int res = reply_dao.insert(vo);
		return res;
	}

	@Override
	public int user_insert(UserVo vo) throws Exception {
		// TODO Auto-generated method stub
		int res = user_dao.insert(vo);
		return res;
	}

	@Override
	public int withdraw_insert(WithdrawVo vo) throws Exception {
		// TODO Auto-generated method stub
		int res = withdraw_dao.insert(vo);
		return res;
	}

	@Override
	public int car_update(CarVo vo) throws Exception {
		// TODO Auto-generated method stub
		int res = car_dao.update(vo);
		return res;
	}

	@Override
	public int chatting_update(ChattingVo vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int company_update(CompanyVo vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int estimate_update(EstimateVo vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int free_update(FreeVo vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int grade_update(GradeVo vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int news_update(NewsVo vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int recommend_update(RecommendVo vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int reply_update(ReplyVo vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int user_update(UserVo vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int withdraw_update(WithdrawVo vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int chatting_delete(ChattingVo vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int company_delete(CompanyVo vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int estimate_delete(EstimateVo vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int free_delete(FreeVo vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int grade_delete(GradeVo vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int news_delete(NewsVo vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int recommend_delete(RecommendVo vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int reply_delete(ReplyVo vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int user_delete(UserVo vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int withdraw_delete(WithdrawVo vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public CarVo car_selectOne(int car_index) {
		// TODO Auto-generated method stub
		CarVo vo = car_dao.selectOne(car_index);
		return vo;
	}

	@Override
	public int car_delete(int car_index) throws Exception {
		// TODO Auto-generated method stub
		int res = car_dao.delete(car_index);
		return res;
	}

	@Override
	public UserVo user_selectOne() {
		// TODO Auto-generated method stub
		return null;
	}

}
