package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import vo.NewsVo;

public class NewsDaoImpl implements NewsDao {

	SqlSession sqlSession;
	
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public List<NewsVo> list() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("news.news_list");
	}

	@Override
	public int insert(NewsVo vo) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int update(NewsVo vo) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(int idx) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

}
