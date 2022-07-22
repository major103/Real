package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import vo.ChattingVo;

public class ChattingDaoImpl implements ChattingDao{

	SqlSession sqlSession;

	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public List<ChattingVo> list() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("chatting.chatting_list");
	}

	@Override
	public int insert(ChattingVo vo) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.insert("chatting.chatting_insert", vo);
	}

	@Override
	public int update(ChattingVo vo) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(int idx) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}
	

}
