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
	String name = (String) request.getAttribute("name");
%>
	<p>
		<a href="<%= request.getContextPath() %>/index?name=侍太郎">
			名前「侍太郎」をServletに送信
		</a>
	</p>
	<p><% 
	if(name!=null) {
		out.println("Servletからデータを受信しました:" + name + "さん、こんにちは！");	
	}
	%></p>
	
</body>
</html>