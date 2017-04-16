package com.oracle.ebp.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

public class TestjNDI extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public TestjNDI() {
		super();
	}


	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
		try {
			Context ctx=new InitialContext();
			DataSource ds=(DataSource) ctx.lookup("java:comp/env/jdbc/db2DataSource");
			Connection conn=ds.getConnection();
			
		} catch (NamingException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public static void main(String[] args) {
		 int _oK=1;
		 System.out.println(_oK);
		 int $byte=2;
		 System.out.println($byte);
		 
	}
	
	
	
	
}
