package dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import vo.UserVo;

public class UserDaoImpl implements UserDao{

	SqlSession sqlSession;

	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public List<UserVo> list() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("user.user_list");
	}

	@Override
	public int insert(UserVo vo) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int update(UserVo vo) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(int idx) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public UserVo selectOne(String u_id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public UserVo selectOne1(Map map) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public UserVo selectOne2(Map map) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public UserVo selectOne3(Map map) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public UserVo update(String new_pwd) {
		// TODO Auto-generated method stub
		return null;
	}
	
	
	
}
