<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Servlet/JSPの基本を学ぼう　課題　|　フォーム</title>
</head>
<body>
	<h2>個人情報入力フォーム</h2>
	<form action="<%= request.getContextPath() %>/confirm" method="post">
		<div>
			<label>氏名</label>
			<input type="text" name="name">
		</div>
		<div>
			<label>メールアドレス</label>
			<input type="text" name="email">
		</div>
		<div>
			<label>住所</label>
			<input type="text" name="address">
		</div>
		<div>
			<label>電話番号</label>
			<input type="text" name="phone_number">
		</div>
		<input type="submit" value="送信">
	</form>
</body>
<style>
label {
	display: inline-block;
	width: 120px;
}
</style>
</html>