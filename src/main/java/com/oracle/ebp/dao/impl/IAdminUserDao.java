package com.oracle.ebp.dao.impl;

import java.util.List;

import com.oracle.ebp.dao.BaseDAO;
import com.oracle.ebp.domain.po.AdminUser;

public interface IAdminUserDao extends BaseDAO<AdminUser, Integer> {
	
	
	/**
	 * @author bobe
	 * @deprecated:adminUser登录
	 * @return
	 */
	public List<AdminUser> adminUserLogin(AdminUser adminUser);
}
