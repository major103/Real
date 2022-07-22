package dao;

import java.util.List;
import java.util.Map;

import vo.UserVo;

public interface UserDao {
	
	public List<UserVo> list();
	
	public UserVo selectOne(String u_id);

	public UserVo selectOne1(Map map);
	
	public UserVo selectOne2(Map map);
	
	public UserVo selectOne3(Map map);

	public UserVo update(String new_pwd);

	public int insert(UserVo vo);

	
	

}
