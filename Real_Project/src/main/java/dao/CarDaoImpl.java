package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import vo.CarVo;

public class CarDaoImpl implements CarDao{

	SqlSession sqlSession;

	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public List<CarVo> list() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("car.car_list");
	}

	@Override
	public int insert(CarVo vo) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.insert("car.car_insert", vo);
	}

	@Override
	public int update(CarVo vo) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.update("car.car_update", vo);
	}

	@Override
	public int delete(int car_index) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.delete("car.car_delete", car_index);
	}

	@Override
	public CarVo selectOne(int car_index) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("car.car_one", car_index);
	}

	@Override
	public CarVo selectOne(String car_name) {
		// TODO Auto-generated method stub
		return null;
	}	
	

}
