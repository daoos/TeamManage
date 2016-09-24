package com.TeamManage.dao.base;

import java.util.List;

/**
 * 是所有Dao的接口
 * @author d
 * 2013-7-28
 * @param <Entity> 看来我对泛型的理解还是不够深啊
 */
public interface BaseDao<Entity> {
	/**
	 * 根据ID查找实体
	 * @param id
	 * @return
	 */
	Entity get(int id);
	

	
	/**
	 * 全部列表
	 * @return
	 */
	/*List<Entity> getAll();*/

	/**
	 * 插入实体
	 * @param e
	 * @return
	 */
	void save(Entity e);

	/**
	 * 删除实体
	 * @param e
	 * @return
	 */
	void delete(Entity e);

	/**
	 * 更新
	 * @param e
	 * @return
	 */
	void update(Entity e);
	void batchInsert(List<Entity> list);
	void batchDelete(List<Entity> list);
	void batchUpdate(List<Entity> list);
	List<Entity> getPage(String queryString,int offset,int pageSize);
	
}
