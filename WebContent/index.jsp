<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Index</title>
<link rel="stylesheet" type="text/css" href="static/css/UserPage.css">
</head>

<body>
<%@include file="common/Header.jsp" %>

<div class="view">
     <%@include file="common/Menu.jsp"%>
     <div class="expShow">
          <input type="hidden" id="numofExp">
          <button onclick="addExp()" style="text-align:left">Add Experiment</button>
          <button onclick="delExp()"style="text-align:right">Delete Experiment</button>
     </div>

   
   <c:forEach begin="0" end="${numOfExp}" var="exp">
      <c:if test="${exp!=0}">
          <div style="text-align:center;background:#908B8B">Experiment${exp}</div>
          <%@include file="expAndUpload.jsp" %>
      </c:if>
   </c:forEach>
   
</div>
</body>
</html>