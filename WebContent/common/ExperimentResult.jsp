<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Experiment result</title>
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
         		    <li>Experiment result</li>
         			<c:forEach var="element" items="${expresult}">
               			<li><c:out value="${element}"/></li> 
					</c:forEach>
				</ul>
				<ul>
					<li>	<form action="${pageContext.request.contextPath}/servlet/ListExperimentInfoService"  method="post">
						<input type="hidden" name="expid" value="${expid}">
						<input type="submit" value="Go back to Experiment Information">
					</form>
					
					<form action="${pageContext.request.contextPath}/servlet/DownloadService"  method="post">
						<input type="hidden" name="fileid" value="${resultfileid}">
						<input type="submit" value="Download the Experiment result sets">
					</form>
					
					</li>
				
				</ul>
				

			</div>
		</div>

</body>
</html>