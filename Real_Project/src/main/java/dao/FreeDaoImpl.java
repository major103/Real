package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import vo.FreeVo;

public class FreeDaoImpl implements FreeDao{

	SqlSession sqlSession;

	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public List<FreeVo> list() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("free.free_list");
	}

	@Override
	public int insert(FreeVo vo) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.insert("free.free_insert");
	}

	@Override
	public int update(FreeVo vo) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(int idx) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}
	

}
