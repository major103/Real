package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import vo.ReplyVo;

public class ReplyDaoImpl implements ReplyDao{

	SqlSession sqlSession;

	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public List<ReplyVo> list() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("reply.reply_list");
	}

	@Override
	public int insert(ReplyVo vo) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int update(ReplyVo vo) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(int idx) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}
	

}
