package service;

import java.beans.IntrospectionException;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONException;
import org.json.JSONObject;

import bean.Experiments;
import bean.LibsvmParameterValue;
import bean.User;
import util.DataBaseUtils;

public class ListExperimentInfoService extends HttpServlet{
	
	public void doGet(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException 
	{
		String expid=request.getParameter("expid");
		
		HttpSession hs=request.getSession();
		
		//get experimentbean
		Experiments expbean=DataBaseUtils.queryForBean("select * from DS_Experiments where expid='"+expid+"';", Experiments.class);
		hs.setAttribute("expbean", expbean);
		//get algorithm name;
		
		String sqlA="select algname,DS_Experiments.algid from DS_Algorithm natrual join DS_Experiments where expid='"+expid+"';";
		List<Map<String,Object>> rsA=new ArrayList<Map<String,Object>>();
		rsA=DataBaseUtils.queryForList(sqlA);
		
		String algName=rsA.get(0).get("algname").toString();
		String algid=rsA.get(0).get("algid").toString();
		
		//get file name
		String sqlB="select filename,DS_files.fileid from DS_Files join DS_Experiments on DS_Files.fileid=DS_Experiments.fileid where expid='"+expid+"';";

		List<Map<String,Object>> rsB=new ArrayList<Map<String,Object>>();
		rsB=DataBaseUtils.queryForList(sqlB);
		String fileName=rsB.get(0).get("filename").toString();
		
		//get parameter name
		List<Map<String,Object>> parameter=new ArrayList<Map<String,Object>>();
		Map<String,String> parastatetable=new HashMap<String,String>();			//parameter name and statement
		Map<String,String> paratypetable=new HashMap<String,String>();
//		JSONObject parastatetable=new JSONObject();
//		JSONObject paratypetable=new JSONObject();
		String sqlC="select paraname,paracommand,paratype,statement from DS_ParameterCommand natrual join DS_Algorithm where DS_Algorithm.algid='"+algid+"';";
		parameter=DataBaseUtils.queryForList(sqlC);
		
		String sqlD;
		for(Integer i=0;i<parameter.size();i++) 
		{
			paratypetable.put(parameter.get(i).get("paraname").toString(),parameter.get(i).get("paratype").toString());
			parastatetable.put(parameter.get(i).get("paraname").toString(),parameter.get(i).get("statement").toString());
//			try {
//				paratypetable.put(parameter.get(i).get("paraname").toString(),parameter.get(i).get("paratype").toString());
//				parastatetable.put(parameter.get(i).get("paraname").toString(),parameter.get(i).get("statement").toString());
//			} catch (JSONException e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//			}
			
		}
		//paratypetable.put(parameter.get(parameter.size()-1).get("paraname").toString(),parameter.get(parameter.size()-1).get("paratype").toString());
		//parastatetable.put(parameter.get(parameter.size()-1).get("paraname").toString(),parameter.get(parameter.size()-1).get("statement").toString());
		
		if(algid.equals("8061653e-aa94-42dd-bd43-de939bd6e1d8")) 
		{
			sqlD="select * from DNA_Sequence.DS_LibsvmParameterValue where expid='"+expid+"';";
			LibsvmParameterValue parameterValue;
			parameterValue=DataBaseUtils.queryForBean(sqlD,LibsvmParameterValue.class);
			
			//request.setAttribute("parametervalue",parameterValue);
			hs.setAttribute("parametervalue",parameterValue);
			hs.setAttribute("paratypetable",paratypetable);
		}
		
		//get all file which are owned by current user
		HttpSession session=request.getSession();
		User user=(User) session.getAttribute("userbean");
		String sqlE="select * from DS_files where userid='"+user.getUserid()+"';";
		List<Map<String,Object>> rsC=new ArrayList<Map<String,Object>>();
		Map<String,String> filemap=new HashMap<String,String>();
		//JSONObject filemap=new JSONObject();
		rsC=DataBaseUtils.queryForList(sqlE);
		
		for(Integer i=0;i<rsC.size();i++) 
		{
			filemap.put(rsC.get(i).get("filename").toString(),rsC.get(i).get("fileid").toString());
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
		
//		//set up json attribute
//		JSONObject json=new JSONObject();
//		System.out.println(expid);
//		
//		try {
//			json.put("link",link);
//			json.put("expbean", expbean);
//			json.put("filemap",filemap);
//			json.put("paratypetable",paratypetable);
//			json.put("parastatetable",parastatetable);
//			json.put("expid", expid);
//			json.put("filename", fileName);
//			json.put("algname", algName);
//		} catch (JSONException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		
//		PrintWriter pw=response.getWriter();
//		pw.println(json);
//		pw.close();
		
		
		request.setAttribute("link",link);
		request.setAttribute("expbean", expbean);
		request.setAttribute("filemap",filemap);
		request.setAttribute("paratypetable",paratypetable);
		request.setAttribute("parastatetable",parastatetable);
		request.setAttribute("expid", expid);
		request.setAttribute("filename", fileName);
		request.setAttribute("algname", algName);
		request.getRequestDispatcher("/common/experimentInfo.jsp").forward(request, response);
		
	}
	
	public void doPost(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException{
		doGet(request,response);
	}
}
