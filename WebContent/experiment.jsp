<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>experiment</title>
<link rel="stylesheet" type="text/css" href="static/css/upload.css">
<%
      request.setCharacterEncoding("UTF-8");
      String experimentName=request.getParameter("experimentName");
      String experimentText=request.getParameter("experimentText");
      request.setAttribute("experimentName",experimentName);
      request.setAttribute("experimentText",experimentText);
      
%>
</head>
<body>
<form action="experimentdisplay.jsp"  method="post">
    Name of Experiment:<input type="text"  name="experimentName" value="${experimentName}" ><br/>
    Describe of Experiment:<br/>
    <input type="text"  name="experimentText"  value="${experimentText}" style="width:900px;height:70px"><br/>
    <input type="submit" value="Save">
</form>
</body>
</html>