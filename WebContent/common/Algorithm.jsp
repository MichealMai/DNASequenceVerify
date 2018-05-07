<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>algorithm</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/Normal.css" type="text/css" charset="utf-8">
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
         	<ul>
            		<li><c:out value="Algorithm name"/>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<c:out value="Algorithm id "/></li>
            		<c:forEach var="element" items="${algtable}">
               		<form action="${pageContext.request.contextPath}/servlet/ListAlgorithmInfoService"  method="post">
                  		<input type="hidden" name="algid" value="${element.value}">
               			<li><input type="submit" name="userid" value="${element.key}">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<c:out value="${element.value}"/></li>
              		</form>
            		</c:forEach>
         	</ul>
      	</div> 
</div>

</body>
</html>