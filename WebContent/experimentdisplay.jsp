<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>display</title>
<link rel="stylesheet" type="text/css" href="http://localhost:8080/DNASequenceVerify/static/css/upload.css">
<%
      request.setCharacterEncoding("UTF-8");
      String experimentName=request.getParameter("experimentName");
      String experimentText=request.getParameter("experimentText");
      request.setAttribute("experimentName",experimentName);
      request.setAttribute("experimentText",experimentText);
      
%>
</head>
<body>
            Name of Experiment:${experimentName}</br>
            Describe of Experiment:</br>
            ${experimentText}
            <form action="experiment.jsp"  method="post">
            <input style="display:none" name="experimentName" value="${experimentName}">
            <input style="display:none" name="experimentText" value="${experimentText}">
            <input type="submit" value="edit">
            </form>
</body>
</html>