package dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import vo.UserVo;

public class UserDaoImpl implements UserDao {

	SqlSession sqlSession;

	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	@Override
	public UserVo selectOne(String u_id) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("user.user_one_id", u_id);
	}

	@Override
	public UserVo selectOne1(Map map) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("user.user_one_phone", map);
	}

	@Override
	public UserVo selectOne2(Map map) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("user.user_one_email", map);
	}

	@Override
	public UserVo selectOne3(Map map) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("user.user_one_pwd", map);
	}

	@Override
	public UserVo update(String new_pwd) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("user.user_pwd_find", new_pwd);
	}

	@Override
	public List<UserVo> list() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("user.user_list");
	}

	@Override
	public int insert(UserVo vo) {
		// TODO Auto-generated method stub
		return sqlSession.insert("user.user_insert", vo);
	}

}
