<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>User Infomation</title>
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
		         <form action="${pageContext.request.contextPath}/servlet/EditUserInfoService"  method="post">
     			<ul>
         			<li>User id:<input type="hidden" name="userid" value="${userinfo.getUserid()}"><c:out value="${userinfo.getUserid()}"></c:out></li>
         			<li>User name:<input type="text" name="username" value="${userinfo.getUsername()}"></li>
         			<li>Password:<input type="text" name="password" value="${userinfo.getPassword()}"></li>
         			<li>Email:<input type="text" name="email" value="${userinfo.getEmail()}"></li>
         			<li>Address:<input type="text" name="address" value="${userbean.getAddress()}"></li>
         			<li>Telephone:<input type="text" name="telephone" value="${userinfo.getTelephone()}"></li>
         			<c:choose>
            				<c:when test="${userinfo.getIsAdmin().equals('yes')}">
            					<li>user is administrator or not:&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="isadmin" value="yes" checked/>Yes<input type="radio" name="isadmin" value="no"/>No</li>
            				</c:when>
         			<c:otherwise>
            					<li>user is administrator or not:&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="isadmin" value="yes"/>Yes<input type="radio" name="isadmin" value="no" checked/>No</li>
           			</c:otherwise>
        				</c:choose> 
         
         			<li><input type="submit" value="Update"></li>

     			</ul>
     			</form>
     					<a href='${pageContext.request.contextPath}/servlet/ListUserService'>go back to user list</a>
			</div>
	</div>


</body>
</html>