package com.kugou.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.icss.tool.DBUtil;
import com.kugou.entify.FriLinks;

public class FriLinkDaoImpl {
	/*
	 * 获取合作伙伴列表
	 */
	public List<FriLinks> listAll() {
		Connection conn= DBUtil.getConnection();
		PreparedStatement pstm=null;
		String sql="select * from friendlink";
		ResultSet rs=null;
		try {
			pstm=  conn.prepareStatement(sql);
			rs= pstm.executeQuery();
			List<FriLinks> list=new ArrayList<FriLinks>();
			FriLinks f=null;
			while(rs.next()){
				f=new FriLinks(rs.getInt(1), rs.getString(2),rs.getString(3));
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
