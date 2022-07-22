package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import vo.RecommendVo;

public class RecommendDaoImpl implements RecommendDao {

	
	SqlSession sqlSession;
	
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public List<RecommendVo> list() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("recommend.recommend_list");
	}

	@Override
	public int insert(RecommendVo vo) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int update(RecommendVo vo) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(int idx) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

}
