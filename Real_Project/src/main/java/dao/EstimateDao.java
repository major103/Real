package dao;

import java.util.List;

import vo.EstimateVo;

public interface EstimateDao {

	List<EstimateVo> list();

	int insert(EstimateVo vo) throws Exception;
	
	int update(EstimateVo vo) throws Exception;
	
	int delete(int idx) throws Exception;
	
}
