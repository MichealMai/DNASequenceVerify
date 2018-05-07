<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>File upload</title>
<link rel="stylesheet" type="text/css" href="static/css/upload.css">
</head>
<body>

         <form action="${pageContext.request.contextPath}/servlet/Uploadfile" enctype="multipart/form-data" method="post">
         Upload document:<input type="file" name="file1"></br>
         <input type="submit" value="Upload" class="submitbutton">
         </form>
         
         
     
</body>
</html>