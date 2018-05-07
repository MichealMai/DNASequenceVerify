<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> Message page</title>
<link rel="stylesheet" type="text/css" href="http://localhost:8080/DNASequenceVerify/static/css/upload.css">

</head>
<body>

             <div class='result'>${message}</div>
            <a href="http://localhost:8080/DNASequenceVerify/upload.jsp"><input type="button" value="upload again"></a>
            
</div>
</body>
</html>