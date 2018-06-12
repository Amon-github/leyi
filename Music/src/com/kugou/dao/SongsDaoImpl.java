package com.kugou.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.icss.tool.DBUtil;
import com.kugou.entify.Songs;

/**
 * @author Administrator
 * @version 创建时间：2018-6-8 下午12:07:25
 * 类说明
 */
public class SongsDaoImpl {
	
	/**
	 * 获取对应类型的歌曲
	 * @param phone
	 * @return
	 */
	public static List<Songs> songsList(int type) {
		String sql="select * from  xgsf where songtype=?";
		Connection con=DBUtil.getConnection();
		PreparedStatement pstm=null;
		ResultSet res=null;
		try {
			pstm=con.prepareStatement(sql);
			pstm.setInt(1, type);
			res=pstm.executeQuery();
			List<Songs> list=new ArrayList<Songs>();
			Songs song=null;
			while (res.next()) {
				song=new Songs(res.getInt(1),res.getString(2),res.getString(3),res.getString(4),res.getString(5),res.getInt(6));
				list.add(song);
			}
			return list;
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			try {
				if(res!=null){
					res.close();
				}
				DBUtil.closeResource(res, pstm, con);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return null;
	}
	
	
	/**
	 * 查询熟练
	 * @param type
	 * @return
	 */
	public static int getCount(int type){
		// TODO 自动生成的方法存根
				Connection con = null;
				PreparedStatement pstm = null;
				ResultSet rs=null;
				try {
					con = DBUtil.getConnection();
					pstm=con.prepareStatement("select count(*) from xgsf where songtype=?");
					pstm.setInt(1, type);
					rs=pstm.executeQuery();
					if (rs.next()) {
						return rs.getInt(1);
					}
				} catch (Exception e) {
					// TODO 自动生成的 catch 块
					e.printStackTrace();
				}finally{
					try {
						if(rs!=null){
							rs.close();
						}
						DBUtil.closeResource(rs, pstm, con);
					} catch (Exception e) {
						e.printStackTrace();
					}
				}
				return 0;		
	}

}
