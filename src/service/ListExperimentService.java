package service;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.User;
import util.DataBaseUtils;

public class ListExperimentService extends HttpServlet{
	
	public void doGet(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException 
	{
		HttpSession session=request.getSession();
		User user=(User) session.getAttribute("userbean");
		String admin=user.getIsAdmin();
		String userid=user.getUserid();
		String sql;
		List<Map<String,Object>> expList=new ArrayList<Map<String,Object>>();
		if(admin.equals("no")) 
		{
			sql="select expname,expid from DS_Experiments where userid='"+userid+"';";
			expList=DataBaseUtils.queryForList(sql);
		}
		
		else
		{
			sql="select expname,expid from DS_Experiments;";
			expList=DataBaseUtils.queryForList(sql);
		}
		
		Map<String,String> expMap = new HashMap<String,String>();
		String expName,expid;
		for(Integer i=0;i<expList.size();i++) 
		{
			
			expName=expList.get(i).get("expname").toString();
			expid=expList.get(i).get("expid").toString();
			expMap.put(expName, expid);
		}
		
		String link;
		if(user.getIsAdmin().equals("yes"))
		{
			link="<a href=\"/DNASequenceVerify/servlet/ListUserService\">UserList</a>";
		}
		else
		{
			link="";
		}
		
		request.setAttribute("link",link);
		
		request.setAttribute("expNameMap", expMap);
		request.getRequestDispatcher("/common/experimentlist.jsp").forward(request, response);
		
		
	}
	
	public void doPost(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException{
		doGet(request,response);
	}
}
