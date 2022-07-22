package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import vo.FreeVo;

public class FreeDaoImpl implements FreeDao {
	
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
	public FreeVo selectOne(int free_index) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("free.free_one", free_index);
	}

	@Override
	public int insert(FreeVo vo) {
		// TODO Auto-generated method stub
		return sqlSession.insert("free.free_insert", vo);
	}

	@Override
	public int delete(int free_index) {
		// TODO Auto-generated method stub
		return sqlSession.delete("free.free_delete", free_index);
	}

	@Override
	public int update(FreeVo vo) {
		// TODO Auto-generated method stub
		return sqlSession.update("free.free_update", vo);
	}

	@Override
	public int update_count(int free_index) {
		// TODO Auto-generated method stub
		return sqlSession.update("free.free_update_count", free_index);
	}

}
