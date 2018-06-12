package com.icss.control;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kugou.dao.UserDaoImpl;
import com.kugou.entify.User;

/**
 * @author Administrator
 * @version 创建时间：2018-6-9 下午4:15:04
 * 类说明
 */
public class UpdatePwdServlet extends HttpServlet {


	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
	}


	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session= request.getSession();

		String uPhone="";
		Object OPhone=session.getAttribute("uPhone");
		if (OPhone!=null) {
			uPhone=(String) OPhone;
		} else {
			System.out.println("session中没有用户数据！");
			return;
		}
		String fpwd=request.getParameter("fpwd");
		String pwd=request.getParameter("pwd");
		User u=UserDaoImpl.logon(uPhone, fpwd);
		String mess="";
		
		if (u!=null) {
			System.out.println("修改密码，用户验证成功！");
			int result=UserDaoImpl.updatePwd(uPhone, pwd);
			if (result==1) {
				System.out.println("修改密码成功！");
				request.setAttribute("login_type", 1);
				session.invalidate();
	    		request.getRequestDispatcher("ListAllServlet").forward(request, response);
			}else {
				System.out.println("修改失败！");
			}
		}else {
			PrintWriter out = response.getWriter();
			out.print("<script>alert('用户名或者密码错误！');window.history.back(-1);</script>");
			out.flush();
			out.close();
		}

	}

}
