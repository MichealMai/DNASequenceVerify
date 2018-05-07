package service;

import bean.LibsvmParameterValue;
import bean.User;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Algorithm;
import bean.Experiments;
import bean.Files;
import util.DataBaseUtils;
import util.TableUtils;

public class CreateExperimentService extends HttpServlet{
	
	public void doGet(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException 
	{
		HttpSession hs=request.getSession();
		User user=(User)hs.getAttribute("userbean");
		
		String message="";
		String fileid=request.getParameter("fileid");
		String userid=user.getUserid();
		String algid=request.getParameter("algid");
		String Expid=UUID.randomUUID().toString();
		String Expname=request.getParameter("expname");
		
		List<String> columnA = new ArrayList<String>();
		columnA.add("expid");
		columnA.add("algid");
		columnA.add("userid");
		columnA.add("fileid");
		columnA.add("expname");
		
		
		List<String> contextA = new ArrayList<String>();
		contextA.add(Expid);
		contextA.add(algid);
		contextA.add(userid);
		contextA.add(fileid);
		contextA.add(Expname);
		
		String sqlC=TableUtils.getInsertSQL(contextA, columnA, Experiments.class);
		DataBaseUtils.update(sqlC);
		
		
		//set up default experiment parameter
        List<Map<String,Object>> parameter=new ArrayList<Map<String,Object>>();
		
		String sqlD="select paraname,paracommand,paratype from DS_ParameterCommand where algid='"+algid+"';";
		parameter=DataBaseUtils.queryForList(sqlD);
		
		String sqlE;
		
		List<String> columnB = new ArrayList<String>();
		List<String> contextB = new ArrayList<String>();
		for(Integer i=0;i<parameter.size();i++)
		{
			columnB.add(parameter.get(i).get("paraname").toString());
			if(parameter.get(i).get("paratype").toString()=="select") 
			{
				contextB.add("no");
			}
			else
				contextB.add("0");
		}
		columnB.add("expid");
		contextB.add(Expid);
		
		if(algid.equals("8061653e-aa94-42dd-bd43-de939bd6e1d8")) {
			sqlE=TableUtils.getInsertSQL(contextB, columnB,LibsvmParameterValue.class);
			DataBaseUtils.update(sqlE);
		}
		request.getRequestDispatcher("/servlet/ListExperimentService").forward(request, response);
	}
	
	
	public void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException
	{	
		doGet(request,response);
	}
}
