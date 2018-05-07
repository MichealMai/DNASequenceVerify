<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Adding a new experiment</title>
</head>
<body>
<jsp:include page="/common/Header.jsp"></jsp:include>

<div class="main">
          <div class="menu">
     		<ul>
          		<li><a href="${pageContext.request.contextPath}/servlet/ListAlgorithmService">Algorithm</a></li>
          		<li><a href="${pageContext.request.contextPath}/Administrator/AdministerFile.jsp">File List</a></li>
          		<li><a href="${pageContext.request.contextPath}/servlet/ListExperimentService">Experiment List</a></li>
          		<li><a href="${pageContext.request.contextPath}/Administrator/AdministerProfile.jsp">Profile</a></li>
          
     		</ul>
     	 </div>
      	 <div class="list">
      	 	<form action="${pageContext.request.contextPath}/servlet/CreateExperimentService" method="post">
      	 	<ul>
         		<li>Experiment name:<input type="text" name="expname"></li>
         		<li>Select a algorithm:</li>
         		<c:forEach var="element" items="${algtable}">
         			<li><input type="radio" name="algid" value="${element.value}"><c:out value="${element.key}"/></li>
         		</c:forEach>
         		<li>Select a file as input:</li>
         		<c:forEach var="element" items="${filetable}">
         			<li><input type="radio" name="fileid" value="${element.value}"><c:out value="${element.key}"/></li>
         		</c:forEach>
         		<li><input type="submit" value="submit the data"></li>
         	</ul>
      	 	</form>
         	
      	 </div> 
</div>

</body>
</html>