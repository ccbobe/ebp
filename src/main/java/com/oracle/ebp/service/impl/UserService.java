package com.oracle.ebp.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.oracle.ebp.dao.impl.IUserDao;
import com.oracle.ebp.domain.po.User;
import com.oracle.ebp.exception.UserException;
import com.oracle.ebp.service.BaseService;

@Service
public class UserService implements BaseService<User,Integer>{
	
	private Logger logger=LoggerFactory.getLogger(UserService.class); 
	
	@Resource
	private IUserDao userDao;

	public int remove(Integer pk) {
		
		return 0;
	}

	public int remove(User entity) {
		// TODO Auto-generated method stub
		return 0;
	}

	public void update(User entity) throws UserException{
			try {
				userDao.updateUser(entity);
			} catch (Exception e) {
				logger.error("更新出错"+e);
				throw new UserException();
			}

	}
	
	public int persist(User t) {
		
		return userDao.persist(t);
	}

	public List<User> queryAll(User entity) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<User> query() {
		// TODO Auto-generated method stub
		
		return null;
	}
	/**
	 * 根据User中的username和password查询用户
	 */
	public List<User> queryUser(User entity) {	
		List<User> list =userDao.queryUser(entity);
		return list;
	}

	
	/**
	 * @author bobe
	 * @param uid
	 * @return
	 * @throws UserException
	 */
	public List<User> queryUserById(Integer uid) throws UserException{
		List<User> user;
		try {
			user = userDao.queryUserByUid(uid);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			throw new UserException();
		}
		return user;
	}
		
	
	
	/**
	 * @author zh:根据uid查询用户
	 * @param uid
	 * @return user
	 * @throws UserException
	 */
	public List<User> queryUserByUid(Integer uid) throws UserException{

		List<User> user;
		try {
			user = userDao.queryUserByUid(uid);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			throw new UserException();
		}
		return user;
	}

	/**
	 * @author zh 
	 */
	public List<User> queryUserByName(User user){
		List<User> list = userDao.queryUserByName(user);
		return list;
	}
	public List<User> query(User entity) {
		
		return null;
	}
	
	//修改用户活动状态信息
	public int updateStatus(User user){
		int status = userDao.updateStatus(user);
		return status;
	}
		
	public int getCount(){
		//获取总条数
		int count = 0;
		try {
			 count = userDao.getTotalCount();
		} catch (Exception e) {
			logger.error("获取数据出错");
		}
		return count;
	}
}
