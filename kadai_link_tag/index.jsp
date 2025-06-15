<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String message = (String) request.getAttribute("message");
%>
	<p>
		<a href="<%= request.getContextPath() %>/index?name=侍太郎">
			名前「侍太郎」をServletに送信
		</a>
	</p>
	<p><% 
	if(message!=null) {
		out.println(message);	
	}
	%></p>
	
</body>
</html>