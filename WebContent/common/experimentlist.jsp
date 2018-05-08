<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Experiment list</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/Normal.css" type="text/css" charset="utf-8">
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jQuery.js"></script>

<script type="text/javascript">
	function edit()
	{
		var eid=document.getElementsByName('expid');//get experiment id
		for(var i=0;i<eid.length;i++)
		{
			if(eid[i].checked==true)
			{
				var checkvalue=eid[i].value;
			}
		}
		
		$.ajax({
			type:"post",//请求方式
			url:"${pageContext.request.contextPath}/servlet/ListExperimentInfoService",//请求地址
			data:{"expid":checkvalue},
			error:function(){
				alert("The experiment is not exist");
			},
			success:function(data){
				alert(data.expid);
				window.location.href="${pageContext.request.contextPath}/common/experimentInfo.jsp?data="+data;
			}
	});
	}
	
	function deleted()
	{
		var eid=document.getElementsByName('expid');//get experiment id
		for(var i=0;i<eid.length;i++)
		{
			if(eid[i].checked==true)
			{
				var checkvalue=eid[i].value;
			}
		}
			
		$.ajax({
			type:"post",//请求方式
			url:"${pageContext.request.contextPath}/servlet/DeleteExperimentService",//请求地址
			data:{"expid":checkvalue},
			error:function(){
				alert("The experiment is not exist");
			},
			success:function(data){
				//alert(data.algname);
				window.location.href="{pageContext.request.contextPath}/servlet/ListExperimentService";
			}
	});
	}
</script>
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
            		<li style="height:30px; float:center; width:600px;"><c:out value="Option"/>
            		&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
            		<c:out value="Experiment name"/></li>
            		<c:forEach var="element" items="${expNameMap}">
            		 		<li style="width:600px; height:5px; float:right;"><c:out value="${element.key}"/></li>
               		<li style="height:100px">
               		<form action="${pageContext.request.contextPath}/servlet/ExcuteLibsvmExperimentService" method="post">
						<input type="hidden" name="expid" value="${element.value}">
						<input type="submit" value="Test the experiment">
					</form>
					<form action="${pageContext.request.contextPath}/servlet/ListExperimentInfoService"  method="post">
                  		<input type="hidden" name="expid" value="${element.value}">
               			<input type="submit" value="Edit">
              		</form>
              		<form action="${pageContext.request.contextPath}/servlet/DeleteExperimentService"  method="post">
                  		<input type="hidden" name="expid" value="${element.value}">
               			<input type="submit" value="Delete">
              		</form>
                		</li>
            		 </c:forEach>
            		<li><a href="${pageContext.request.contextPath}/servlet/ListExperimentCreatedForm">Add a new Experiment</a></li>
         	</ul>
      	</div> 
</div>

</body>
</html>

<%--               		 --%>