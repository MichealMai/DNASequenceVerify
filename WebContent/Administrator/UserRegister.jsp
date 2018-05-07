<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>User Register</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/Normal.css">
</head>
<body>
<jsp:include page="/common/Header.jsp"></jsp:include>
<div class="main">
			<div class="menu">
     			<ul>
     				<li><a href="${pageContext.request.contextPath}/servlet/ListUserService">UserList</a></li>
          			<li><a href="${pageContext.request.contextPath}/servlet/ListAlgorithmService">Algorithm</a></li>
          			<li><a href="${pageContext.request.contextPath}/servlet/ListFileService">File List</a></li>
          			<li><a href="${pageContext.request.contextPath}/servlet/ListExperimentService">Experiment List</a></li>
          			<li><a href="${pageContext.request.contextPath}/common/Profile.jsp">Profile</a></li>
     			</ul>
     	 	</div>
		    <div class="list">
		         <form action="${pageContext.request.contextPath}/servlet/CreateUserService"  method="post">
     			<ul>
         			<li>User name:<input type="text" name="username" ></li>
         			<li>Password:<input type="text" name="password"></li>
         			<li>Email:<input type="text" name="email"></li>
         			<li>Address:<input type="text" name="address"></li>
         			<li>Telephone:<input type="text" name="telephone"></li>
         			<li>user is administrator or not:&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
         			<input type="radio" name="isadmin" value="yes"/>Yes<input type="radio" name="isadmin" value="no"/>No</li>
         			<li><input type="submit" value="Register"></li>
     			</ul>
     			</form>
     					<a href='${pageContext.request.contextPath}/servlet/ListUserService'>go back to user list</a>
			</div>
	</div>

</body>
</html>