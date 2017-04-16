package com.oracle.ebp.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.oracle.ebp.dao.impl.IUserDao;
import com.oracle.ebp.domain.PageBean;
import com.oracle.ebp.domain.po.User;
import com.oracle.ebp.domain.po.UserVO;
import com.oracle.ebp.exception.UserException;
import com.oracle.ebp.service.BaseService;
/**
 * @author bobe
 *
 */
@Service
public class UserManagerService implements BaseService<User, Integer> {
	
	private Logger logger=LoggerFactory.getLogger(UserManagerService.class);
	
	@Resource
	private IUserDao userDao;

	public int persist(User entity) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int remove(Integer pk) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int remove(User entity) {
		// TODO Auto-generated method stub
		return 0;
	}

	public void update(User entity) {
		// TODO Auto-generated method stub
		
	}
	
	/**
	 * 分页查询
	 * @author bobe
	 * @param pageBean
	 * @return
	 */
	public List<User> query(PageBean<User> pageBean  ) {
		List<User> list = userDao.queryByPage(pageBean.getCurrentPage(), pageBean.getPageCount());
		return list;
	}

	public List<User> query(User entity) {
		//
		return null;
	}

	public List<User> query() {
		// TODO Auto-generated method stub
		return null;
	}
	
	/**
	 * @author bobe
	 * @deprecated:条件查询自带默认排序
	 * @param vo
	 * @return {@code List}
	 */
	public List<User> queryByVague(UserVO vo) {
		List<User> list=null;
		try {
			list = userDao.queryByVague(vo);
		} catch (UserException e) {
			logger.info("查询出错:=====>"+this+"错误信息"+e);
		}
		return list;
	}
	
	
	/**
	 * @author bobe
	 * @deprecated:默认查询条件
	 * @param vo
	 * @return
	 */
	public List<User> queryByCondition(UserVO vo) {
		List<User> list=null;
		try {
			list = userDao.queryByVague(vo);
		} catch (UserException e) {
			logger.info("查询出错:=====>"+this+"错误信息"+e);
		}
		return list;
	}
	
}
