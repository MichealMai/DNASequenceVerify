<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Experiment info</title>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jQuery.js"></script>
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
		    <form action="${pageContext.request.contextPath}/servlet/EditExperimentService" method="post">	
			<ul>
         		    <li>Experiment name:&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="text" name="expname" value="${expbean.getExpname()}"/></li>
            			<li>Input File name:</li>
            			<c:forEach var="element" items="${filemap}">
            				<c:choose>
            					<c:when test="${element.value.equals(expbean.getFileid())}">
            						<li><input type="radio" name="fileid" value="${element.value}" checked><c:out value="${element.key}"/></li>
            					</c:when>
            					<c:otherwise>
            						<li><input type="radio" name="fileid" value="${element.value}"><c:out value="${element.key}"/></li>
            					</c:otherwise>
            				</c:choose>
            			</c:forEach>
            			<li>Algorithm name:"${algname}"</li>
            			<li><c:out value="Parameter name"/>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<c:out value="Parameter value "/></li>
            			<c:forEach var="element" items="${paratypetable}">
          				<c:choose>
            					<c:when test="${element.value.equals('select')}">
             						<c:choose>
            			 				<c:when test="${parametervalue.get(element.key,parametervalue).equals('yes')}">
            	
            								<li><c:out value="${element.key}"/>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="${element.key}" value="yes" checked/>Yes<input type="radio" name="${element.key}" value="no"/>No</li>
            							</c:when>
            							<c:otherwise>
            								<li><c:out value="${element.key}"/>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="${element.key}" value="yes"/>Yes<input type="radio" name="${element.key}" value="no" checked/>No</li>
            							</c:otherwise>
            							</c:choose> 
            					</c:when>
            					<c:otherwise>
            						<li><c:out value="${element.key}"/>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="text" name="${element.key}" value="${parametervalue.get(element.key,parametervalue)}"/></li>
            					</c:otherwise>
            				</c:choose>
            				
               			<li></li> 
					</c:forEach>
					
         		</ul>
         		<input type="submit" value="Update The Experiment " style="float:left">
         		</form>
<%--          		<form action="${pageContext.request.contextPath}/servlet/ExcuteLibsvmExperimentService" method="post" style="float:left">
					<input type="hidden" name="expid" value="${expid}">
					<input type="submit" value="run the experiment">
				</form> --%>
         	
         	<a href="${pageContext.request.contextPath}/servlet/ListExperimentService" style="float:left">Go back to experiment list</a>
      		</div>
      		
	</div>

</body>
</html>