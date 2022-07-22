package dao;

import java.util.List;

import vo.UserVo;

public interface UserDao {

	List<UserVo> list();

	int insert(UserVo vo) throws Exception;
	
	int update(UserVo vo) throws Exception;
	
	int delete(int idx) throws Exception;
	
}
