package com.icss.tool;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.mchange.v2.c3p0.ComboPooledDataSource;

public class DBUtil {
	/**
	 * 申明一个静态对象
	 */
    static	ComboPooledDataSource  cpds =null;
    /**
     * 在静态块中,初始化一个池子对象
     */
	static{
		 cpds=new ComboPooledDataSource("mysql");
	}
	
	/***
	 * 
	 * @return
	 * 
	 */
   public static Connection getConnection(){
	     try {
			Connection conn=  cpds.getConnection();
			System.out.println("数据库连接成功！");
			return conn;
		} catch (SQLException e) {
		
			e.printStackTrace();
		}
	   return null;
   }
   
   /**
    * 关闭连接
    * @param rs
    * @param pstm
    * @param conn
    */
   public static void closeResource(ResultSet rs,PreparedStatement pstm,Connection conn){
	   try{
		   if(rs!=null){rs.close();}
		   if(pstm!=null){pstm.close();}
		   if(conn!=null){conn.close();}
	   }catch(Exception  e){
		   e.printStackTrace();
	   }
   }
   

   
   
  
}
