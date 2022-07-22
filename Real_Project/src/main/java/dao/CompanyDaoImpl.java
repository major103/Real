package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import vo.CompanyVo;

public class CompanyDaoImpl implements CompanyDao{

	SqlSession sqlSession;

	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public List<CompanyVo> list() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("company.company_list");
	}

	@Override
	public int insert(CompanyVo vo) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int update(CompanyVo vo) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(int idx) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}
	

}
