package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import vo.GradeVo;

public class GradeDaoImpl implements GradeDao{

	SqlSession sqlSession;

	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public List<GradeVo> list() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("grade.grade_list");
	}

	@Override
	public int insert(GradeVo vo) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int update(GradeVo vo) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(int idx) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}
	

}
