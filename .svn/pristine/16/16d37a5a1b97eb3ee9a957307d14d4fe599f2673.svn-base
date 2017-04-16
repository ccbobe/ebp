package com.oracle.ebp.dao;

import java.io.Serializable;
import java.util.List;

import com.oracle.ebp.domain.PageBean;

public interface BaseDAO<T,PK extends Serializable> {
	
	/**
	 * @deprecated:保存
	 * @param t
	 * @return {@code int}: 返回修改条数
	 */
	int persist(T entity)throws Exception;
	
	/**
	 * @deprecated:删除
	 * @author bobe
	 * @param entity
	 * @return {@code int}:返回删除记录条数
	 */
	int remove(T entity)throws Exception;
	
	/**
	 * @author bobe
	 * @deprecated:更新数据
	 * @param entity
	 * @return {@code int}:返回修改记录条数
	 * 
	 */
	int update(T entity)throws Exception;
	
	
	/**
	 * @deprecated:查询单条数据
	 * @param id
	 * @return T:返回对象
	 */
	T queryById(PK id)throws Exception;
	
	/**
	 * @deprecated:查询全部
	 * @return T:返回实体集合
	 */
	List<T> queryAll()throws Exception;
	/**
	 * @deprecated:分页查询
	 * @param page {@code PageBean}
	 * @return {@code List}:返回集合数据
	 */
	List<T> queryByPage(PageBean<T> page)throws Exception;
	/**
	 * 查询总记录数据
	 * @return {@code int}
	 */
	int getTotalCount()throws Exception;
}
