package dao;

import java.util.List;
import java.util.Map;

import vo.UserVo;

public interface UserDao {

	List<UserVo> list();
	
	UserVo selectOne(String u_id);
	UserVo selectOne1(Map map);
	UserVo selectOne2(Map map);
	UserVo selectOne3(Map map);
	UserVo update(String new_pwd);
	
	int insert(UserVo vo) throws Exception;
	
	int update(UserVo vo) throws Exception;
	
	int delete(int idx) throws Exception;

	

	

	
	

	
	
}
