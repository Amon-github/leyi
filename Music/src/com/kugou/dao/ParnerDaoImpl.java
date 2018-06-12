package com.kugou.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.icss.tool.DBUtil;
import com.kugou.entify.Parners;


public class ParnerDaoImpl{

	/*
	 * 获取合作伙伴列表
	 */
	public List<Parners> listAll() {
		Connection conn= DBUtil.getConnection();
		PreparedStatement pstm=null;
		String sql="select * from parners";
		ResultSet rs=null;
		try {
			pstm=  conn.prepareStatement(sql);
			rs= pstm.executeQuery();
			List<Parners> list=new ArrayList<Parners>();
			Parners f=null;
			while(rs.next()){
				f=new Parners(rs.getInt(1), rs.getString(2));
				list.add(f);
			}
			return list;
		} catch (SQLException e) {
		
			e.printStackTrace();
		}finally{
			DBUtil.closeResource(rs, pstm, conn);
		}
		return null;
	}

}
