<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Algorithm Info</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/Normal.css">
</head>
<body>
<jsp:include page="/common/Header.jsp"></jsp:include>

<div class="main">
                <div class="menu">
     		<ul>
     			<li>${link}</li>
          		<li><a href="${pageContext.request.contextPath}/servlet/ListAlgorithmService">Algorithm</a></li>
          		<li><a href="${pageContext.request.contextPath}/servlet/ListFileService">File List</a></li>
          		<li><a href="${pageContext.request.contextPath}/servlet/ListExperimentService">Experiment List</a></li>
          		<li><a href="${pageContext.request.contextPath}/common/Profile.jsp">Profile</a></li>
          
     		</ul>
     	 </div>
      <div class="list">
         <c:out value="${algname}"/>
         <ul>
            <li><c:out value="Parameter name"/>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<c:out value="Parameter statement "/></li>
            <c:forEach var="element" items="${paratable}">
               <li><c:out value="${element.key}"/>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<c:out value="${element.value}"/></li> 
			</c:forEach>
         </ul>
         <a href="${pageContext.request.contextPath}/servlet/ListAlgorithmService">Go back to algorithm list</a>
         
      </div>
      
</div>

</body>
</html>