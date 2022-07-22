package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import vo.EstimateVo;

public class EstimateDaoImpl implements EstimateDao {
	
	SqlSession sqlSession;
	
	
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public List<EstimateVo> list() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("estimate.estimate_list");
	}

	@Override
	public int insert(EstimateVo vo) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int update(EstimateVo vo) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(int idx) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

}
