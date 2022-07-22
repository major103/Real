package service;

import java.util.Map;

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

public interface AdminService {

		//select
	Map car_List();
	Map chatting_List();
	Map company_List();
	Map estimate_List();
	Map free_List();
	Map grade_List();
	Map news_List();
	Map recommend_List();
	Map reply_List();
	Map user_List();
	Map withdraw_List();
	
		//insert
	int car_insert(CarVo vo) throws Exception;
	int chatting_insert(ChattingVo vo) throws Exception;
	int company_insert(CompanyVo vo) throws Exception;
	int estimate_insert(EstimateVo vo) throws Exception;
	int free_insert(FreeVo vo) throws Exception;
	int grade_insert(GradeVo vo) throws Exception;
	int news_insert(NewsVo vo) throws Exception;
	int recommend_insert(RecommendVo vo) throws Exception;
	int reply_insert(ReplyVo vo) throws Exception;
	int user_insert(UserVo vo) throws Exception;
	int withdraw_insert(WithdrawVo vo) throws Exception;
	
		//update
	int car_update(CarVo vo) throws Exception;
	int chatting_update(ChattingVo vo) throws Exception;
	int company_update(CompanyVo vo) throws Exception;
	int estimate_update(EstimateVo vo) throws Exception;
	int free_update(FreeVo vo) throws Exception;
	int grade_update(GradeVo vo) throws Exception;
	int news_update(NewsVo vo) throws Exception;
	int recommend_update(RecommendVo vo) throws Exception;
	int reply_update(ReplyVo vo) throws Exception;
	int user_update(UserVo vo) throws Exception;
	int withdraw_update(WithdrawVo vo) throws Exception;
	
		//delete
	int car_delete(int car_index) throws Exception;
	int chatting_delete(ChattingVo vo) throws Exception;
	int company_delete(CompanyVo vo) throws Exception;
	int estimate_delete(EstimateVo vo) throws Exception;
	int free_delete(FreeVo vo) throws Exception;
	int grade_delete(GradeVo vo) throws Exception;
	int news_delete(NewsVo vo) throws Exception;
	int recommend_delete(RecommendVo vo) throws Exception;
	int reply_delete(ReplyVo vo) throws Exception;
	int user_delete(UserVo vo) throws Exception;
	int withdraw_delete(WithdrawVo vo) throws Exception;
	
		//selectOne
	CarVo car_selectOne(int car_index);
	UserVo user_selectOne();
}
