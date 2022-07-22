package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import vo.WithdrawVo;

public class WithdrawDaoImpl implements WithdrawDao {

	SqlSession sqlSession;
	
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public List<WithdrawVo> list() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("withdraw.withdraw_list");
	}

	@Override
	public int insert(WithdrawVo vo) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int update(WithdrawVo vo) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(int idx) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

}
