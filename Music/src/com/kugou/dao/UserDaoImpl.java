package com.kugou.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.crypto.spec.PSource;
import javax.swing.text.html.HTMLDocument.HTMLReader.PreAction;

import com.icss.tool.DBUtil;
import com.kugou.entify.User;


/**
 * @author Administrator
 * @version 创建时间：2018-6-5 下午6:56:19
 * 类说明
 */
public class UserDaoImpl {
	
	
	/**
	 * 用户注册
	 * @param phone
	 * @param pwd
	 * @return
	 */
	public static int regester(String phone,String pwd) {
		String sql="insert into kguser (phone,pwd) values (?,?)";
		Connection con=DBUtil.getConnection();
		PreparedStatement pstm=null;
		int res=-1;
		try {
			pstm=con.prepareStatement(sql);
			pstm.setString(1, phone);
			pstm.setString(2, pwd);
			res=pstm.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			try {
				if (pstm!=null) {pstm.close();}
				if (con!=null) {con.close();}
			} catch (Exception e2) {
				// TODO: handle exception
			}
		}
		return res;
	}
	
	
	
	/**
	 * 检查该手机号码是否以及注册
	 * @param phone
	 * @return
	 */
	public static int checkPhone(String phone) {
		String sql="select * from  kguser where phone=?";
		Connection con=DBUtil.getConnection();
		PreparedStatement pstm=null;
		ResultSet res=null;
		int re=0;
		try {
			pstm=con.prepareStatement(sql);
			pstm.setString(1, phone);
			res=pstm.executeQuery();
			while (res.next()) {
				re+=1;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			try {
				if (pstm!=null) {pstm.close();}
				if (con!=null) {con.close();}
			} catch (Exception e2) {
			}
		}
		return re;
	}
	
	
	/**
	 * 登录
	 * @param phone
	 * @param pwd
	 * @return
	 */
	public static User logon(String phone,String pwd) {
		
		String sql="select * from  kguser where phone=? and pwd=?";
		Connection con=DBUtil.getConnection();
		PreparedStatement pstm=null;
		ResultSet rs=null;
		User u=null;
		try {
			pstm=con.prepareStatement(sql);
			pstm.setString(1, phone);
			pstm.setString(2, pwd);
			rs=pstm.executeQuery();
			while (rs.next()) {
				u=new User(rs.getInt(1),rs.getString(2),rs.getString(4));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			try {
				if (pstm!=null) {pstm.close();}
				if (con!=null) {con.close();}
			} catch (Exception e2) {
			}
		}
		return u;
	}
	
	/**
	 * 修改密码
	 * @param phone
	 * @param pwd
	 * @return
	 */
	public static int updatePwd(String phone,String pwd) {
		String sql="update  kguser set pwd=? where phone=?";
		Connection con=DBUtil.getConnection();
		PreparedStatement pstm=null;
		int rs=-1;
		try {
			pstm=con.prepareStatement(sql);
			pstm.setString(1,pwd);
			pstm.setString(2,phone);
			rs=pstm.executeUpdate();
			System.out.println("修改密码sql语句："+pstm.toString());
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			try {
				if (pstm!=null) {pstm.close();}
				if (con!=null) {con.close();}
			} catch (Exception e2) {
			}
		}
		return rs;
	}
	

	

}
