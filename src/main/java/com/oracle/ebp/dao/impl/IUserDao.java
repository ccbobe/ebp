package com.oracle.ebp.dao.impl;

import java.util.List;

import com.oracle.ebp.dao.BaseDAO;
import com.oracle.ebp.domain.po.User;
import com.oracle.ebp.domain.po.UserVO;
import com.oracle.ebp.exception.UserException;

public interface IUserDao extends BaseDAO<User,Integer> {
	
	public List<User> queryAll();
	
	public List<User> queryUser (User user);
	
	public int persist(User user);

	//根据用户登录名查询用户
	public List<User> queryUserByName(User user);
	//修改密码和个人信息
	public void updateUser(User user);

	//修改账户活动信息
	public int updateStatus(User user);
	
	//分页查询user===> admin
	public List<User> queryByPage(int currentPage , int pageCount );

	public List<User> queryUserById(Integer uid);
	
	public List<User> queryUserByUid(Integer uid);
	//根据信息查询用户信息
	public List<User> queryByCondition(UserVO vo) throws UserException;
	
	//根据信息模糊查询
	public List<User> queryByVague(UserVO vo) throws UserException;
	//查询总条数
	public int getTotalCount() throws Exception;
	
}
