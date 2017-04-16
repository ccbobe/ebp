package com.oracle.ebp.domain;

import java.util.List;


/**
 * 分页
 * 
 */
public class PageBean<T> {
	private int currentPage = 1; // 当前页
	private int pageCount = 5;   // 默认显示条数
	private int totalCount;      // 总记录数据
	private int totalPage;       // 总页数 = 总记录数 / 每页显示的行数  (+ 1)
	
	private List<T> pageData;

	//返回总页数
	public int getTotalPage() {
		if (totalCount % pageCount == 0) {
			totalPage = totalCount / pageCount;
		} else {
			totalPage = totalCount / pageCount + 1;
		}
		return totalPage;
	}
	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}
	
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	public int getPageCount() {
		return pageCount;
	}
	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}
	public int getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}
	
	public List<T> getPageData() {
		return pageData;
	}
	public void setPageData(List<T> pageData) {
		this.pageData = pageData;
	}
	
	
	
	

}
