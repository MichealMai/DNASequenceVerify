<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>upload file</title>
</head>
<body>
<jsp:include page="/common/Header.jsp"></jsp:include>
	<div class="main">
			<div class="menu">
     			<ul>
          			<li><a href="${pageContext.request.contextPath}/servlet/ListAlgorithmService">Algorithm</a></li>
          			<li><a href="${pageContext.request.contextPath}/servlet/ListFileService">File List</a></li>
          			<li><a href="${pageContext.request.contextPath}/servlet/ListExperimentService">Experiment List</a></li>
          			<li><a href="${pageContext.request.contextPath}/Administrator/AdministerProfile.jsp">Profile</a></li>
     			</ul>
     	 	</div>
     	 	<div class="list">
     	 		<form action="${pageContext.request.contextPath}/servlet/UploadService" enctype="multipart/form-data" method="post">
         			Upload document:<input type="file" name="file1"></br>
         			<input type="submit" value="Upload">
        	 		</form>
        	 	</div>
         
</body>
</html>