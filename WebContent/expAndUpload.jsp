<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ExperimentAndUpload</title>
<link rel="stylesheet" type="text/css" href="static/css/upload.css">

</head>
<body>

    <div class='banner'>
    <div class='content'>
    <iframe src='upload.jsp' style="width:600px;height:60px" frameborder=no></iframe></br>
    <iframe src='${pageContext.request.contextPath}/servlet/Listinput' style="width:600px;height:200px" frameborder=no></iframe>
    <iframe src='experiment.jsp' style="width:1000px;height:155px" frameborder=no></iframe>
    </div>
    </div>
</body>
</html>