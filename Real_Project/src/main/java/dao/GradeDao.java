package dao;

import java.util.List;

import vo.GradeVo;

public interface GradeDao {

	List<GradeVo> list();

	int insert(GradeVo vo) throws Exception;
	
	int update(GradeVo vo) throws Exception;
	
	int delete(int idx) throws Exception;
	
}
