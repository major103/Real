package dao;

import java.util.List;

import vo.RecommendVo;

public interface RecommendDao {

	List<RecommendVo> list();

	int insert(RecommendVo vo) throws Exception;
	
	int update(RecommendVo vo) throws Exception;
	
	int delete(int idx) throws Exception;
}
