package dao;

import java.util.List;

import vo.CompanyVo;

public interface CompanyDao {

	List<CompanyVo> list();

	int insert(CompanyVo vo) throws Exception;
	
	int update(CompanyVo vo) throws Exception;
	
	int delete(int idx) throws Exception;
	
}
