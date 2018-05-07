<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Administrator Menu</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/Normal.css">
</head>
<body>
     <div class="menu">
     <ul>

          <li>${link}</li>
          <li><a href="${pageContext.request.contextPath}/servlet/ListAlgorithmService">Algorithm</a></li>
          <li><a href="${pageContext.request.contextPath}/servlet/ListFileService">File List</a></li>
          <li><a href="${pageContext.request.contextPath}/servlet/ListExperimentService">Experiment List</a></li>
          <li><a href="${pageContext.request.contextPath}/Administrator/AdministerProfile.jsp">Profile</a></li>
          
     </ul>
     </div>
</body>
</html>