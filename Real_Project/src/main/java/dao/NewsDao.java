package dao;

import java.util.List;

import vo.NewsVo;

public interface NewsDao {

	List<NewsVo> list();

	int insert(NewsVo vo) throws Exception;
	
	int update(NewsVo vo) throws Exception;
	
	int delete(int idx) throws Exception;
}
