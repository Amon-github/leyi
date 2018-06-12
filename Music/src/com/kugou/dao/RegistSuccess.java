package com.kugou.dao;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author Administrator
 * @version 创建时间：2018-6-8 下午8:33:10
 * 类说明
 */
public class RegistSuccess extends HttpServlet {


	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.print("<div><div style=\"border: 1px solid gray;width: 200px; height: 150px; position: fixed; top: 20%;left: 35%;padding-left: 20px;\"><div style=\"font-size: 23px;width: 120px;margin: 20px auto;\">注册成功！</div><div><button style=\"width: 180px;height: 40px;background: #2299ed;border-radius: 5px;margin-top: 20px;border: none;color: white;font-size: 14px;font-weight: bold;\">确 定</button></div></div></div>");
		out.flush();
		out.close();
		
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);

	}

}
