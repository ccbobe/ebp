package com.oracle.ebp.domain.po;

import com.oracle.ebp.domain.PageBean;

public class UserPO {
	
	private User user;
	
	private PageBean<User> pageBean;

	public User getUser() {
		return user;
	}

	public PageBean<User> getPageBean() {
		return pageBean;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public void setPageBean(PageBean<User> pageBean) {
		this.pageBean = pageBean;
	}
	

}
