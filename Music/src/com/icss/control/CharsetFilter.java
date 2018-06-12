package com.icss.control;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author Administrator
 * @version 创建时间：2018-6-8 下午2:57:05
 * 解决字符编码: utf-8
 */
public class CharsetFilter   implements Filter {

	
	
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		
		
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		
		HttpServletRequest  res=(HttpServletRequest) request;
		HttpServletResponse resq=(HttpServletResponse) response;
		
		//将请求和响应的字符编码设置成 utf-8的形式
		resq.setContentType("text/html;charset=utf-8");
		res.setCharacterEncoding("utf-8");
		resq.setCharacterEncoding("utf-8");
		
		//直接将请求和响应放行
		chain.doFilter(res, resq);
		
		
	}

	@Override
	public void destroy() {
		// TODO 自动生成的方法存根
		
	}

}