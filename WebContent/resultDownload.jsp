<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Download Result</title>

</head>
<body>
<%@include file="common/taglib.jsp"%>
       
             <form action="${pageContext.request.contextPath}/servlet/Downloadfile"  method="post">
                <input style="display:none" name="path" value="${path}">
                Please press this to download the result
                <input type="submit" value="download">
            </form>     
            <a href="${pageContext.request.contextPath}/servlet/Listinput"><input type="button" value="Run again"></a>
</body>
</html>