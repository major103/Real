package dao;

import java.util.List;

import vo.FreeVo;

public interface FreeDao {

	List<FreeVo> list();

	int insert(FreeVo vo) throws Exception;
	
	int update(FreeVo vo) throws Exception;
	
	int delete(int idx) throws Exception;
	
}
