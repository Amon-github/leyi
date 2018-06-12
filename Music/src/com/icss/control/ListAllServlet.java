package com.icss.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kugou.dao.FriLinkDaoImpl;
import com.kugou.dao.ParnerDaoImpl;
import com.kugou.dao.SongsDaoImpl;
import com.kugou.entify.FriLinks;
import com.kugou.entify.Parners;
import com.kugou.entify.Songs;
/**
 * 
 * @author Administrator 
 * @version 创建时间：2018-6-9 上午11:35:40
 * 加载主页时，加载数据库中的数据
 */
public class ListAllServlet extends HttpServlet {


	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		//dao方法
		ParnerDaoImpl  dao= new ParnerDaoImpl();
		List<Parners> plist= dao.listAll();
		FriLinkDaoImpl fLinks=new FriLinkDaoImpl();
		List<FriLinks> flist=fLinks.listAll();
		
		List<Songs>  song_hy=SongsDaoImpl.songsList(1);
		List<Songs>  song_om=SongsDaoImpl.songsList(2);
		List<Songs>  song_hg=SongsDaoImpl.songsList(3);
		List<Songs>  song_rb=SongsDaoImpl.songsList(4);
		
		int pageSize=(int) Math.ceil((double)SongsDaoImpl.getCount(1)/8);//歌曲总页码

		//调转页面,带值plist
		request.setAttribute("plist", plist);
		request.setAttribute("flist", flist);
		request.setAttribute("pagesize", pageSize);
		request.setAttribute("song_hy", song_hy);
		request.setAttribute("song_om", song_om);
		request.setAttribute("song_hg", song_hg);
		request.setAttribute("song_rb", song_rb);
		
		request.getRequestDispatcher("/kgindex.jsp").forward(request, response);
	}


	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
	
	

}
