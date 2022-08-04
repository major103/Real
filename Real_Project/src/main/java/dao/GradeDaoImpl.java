package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import vo.GradeVo;

public class GradeDaoImpl implements GradeDao {

	SqlSession sqlSession;
	
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public List<GradeVo> selectList() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("grade.grade_list");
	}

	@Override
	public GradeVo selectOne(int g_index) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("grade.grade_one", g_index);
	}

	@Override
	public int insert(GradeVo vo) {
		// TODO Auto-generated method stub
		return sqlSession.insert("grade.grade_insert", vo);
	}

	@Override
	public int delete(int g_index) {
		// TODO Auto-generated method stub
		return sqlSession.delete("grade.grade_delete", g_index);
	}

	@Override
	public int update(GradeVo vo) {
		// TODO Auto-generated method stub
		return sqlSession.update("grade.grade_update", vo);
	}

}
