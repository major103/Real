package dao;

import java.util.List;

import vo.CarVo;

public interface CarDao {

	
	List<CarVo> list();

	int insert(CarVo vo) throws Exception;
	
	int update(CarVo vo) throws Exception;
	
	int delete(int car_index) throws Exception;

	CarVo selectOne(String car_name);

	CarVo selectOne(int car_index);
	
}
