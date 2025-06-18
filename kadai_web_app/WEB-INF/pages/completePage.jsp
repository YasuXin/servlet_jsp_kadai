<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Servlet/JSPの基本を学ぼう　課題　|　完了画面</title>
</head>
<body>
	<h2>個人情報入力が完了しました。</h2>
	<button onclick="location.href='<%= request.getContextPath() %>/form'">戻る</button>
</body>
</html>