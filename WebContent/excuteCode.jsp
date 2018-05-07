<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Excute code</title>
<link rel="stylesheet" type="text/css" href="static/css/upload.css">
</head>
<body>
         <form action="${pageContext.request.contextPath}/servlet/Excutefile"  method="post">
         InputFile:
         <c:forEach var="me" items="${fileNameMap}">
           <input type="radio" name="filename" value="${me.key}" checked><c:out value="${me.value}"/>
         </c:forEach></br>
         Threshold:</br>
         Upbound:&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="text" name="upboundnum">E+<input type="text" name="upboundcoff"></br>
         Downbound:&nbsp<input type="text" name="downboundnum">E+<input type="text" name="downboundcoff"></br>
         Verbose output:&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="checkbox" name="verbose"></br>
         Generate new features:&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="checkbox" name="gnf"></br>
         Perform cross validation test:&nbsp<input type="checkbox" name="cvt"></br>
         <a href="${pageContext.request.contextPath}/servlet/Listinput"><input type="button" value="Refresh"></a>
         <input type="submit" value="Run the code">
         </form>
</body>
</html>