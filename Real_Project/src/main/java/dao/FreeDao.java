package dao;

import java.util.List;
import java.util.Map;

import vo.FreeVo;

public interface FreeDao {
	
	List<FreeVo>	list();
	FreeVo			selectOne(int free_index);
	
	int				insert(FreeVo vo);
	int				delete(int free_index);
	int				update(FreeVo vo);
	
	int				update_count(int free_index);
}
