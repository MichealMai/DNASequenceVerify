package service;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.User;
import util.DataBaseUtils;

public class DownloadService extends HttpServlet{
	
	public void doGet(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException
	{
		//Get file download path
		HttpSession session=request.getSession();
		User user=(User)session.getAttribute("userbean");
		String fileid=request.getParameter("fileid");
		String sqlA="select filepath from DS_files where fileid='"+fileid+"';";
		List<Map<String,Object>> result=new ArrayList<Map<String,Object>>();
		result=DataBaseUtils.queryForList(sqlA);
		String path=result.get(0).get("filepath").toString();
		
		String savepath=this.getServletContext().getRealPath(path).substring(0, this.getServletContext().getRealPath(path).lastIndexOf("/.metadata"))+path;
		//File file=new File(path);
		File file=new File(savepath);
		if(!file.exists()) {
			request.setAttribute("message", "The file has been deleted");
			//request.getRequestDispatcher("/servlet/Listinput").forward(request,response);
			return;
		}
		
		response.setHeader("content-disposition","attachment;filename="+path.substring(path.lastIndexOf("/")+1));
		FileInputStream in=new FileInputStream(savepath);
		OutputStream out=response.getOutputStream();
		
		byte buffer[]=new byte[65536];
		Integer len=0;
		while((len=in.read(buffer))>0) 
		{
			out.write(buffer,0,len);
		}
		in.close();
		out.flush();
		out.close();
		//request.getRequestDispatcher("/servlet/ListFileService").forward(request, response);
	}
	
	public void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException 
	{
		doGet(request,response);
	}

}
