<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Objects" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Servlet/JSPの基本を学ぼう　課題　|　確認画面</title>
</head>
<body>
	<h2>入力内容をご確認ください。</h2>
	<p>問題がなければ「確認」、修正する場合は「キャンセル」をクリックしてください。</p>
	<table>
		<thead>
			<tr>
				<th>項目</th>
				<th>入力内容</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>氏名</td>
				<td>${ name }</td>
			</tr>
			<tr>
				<td>メールアドレス</td>
				<td>${ email }</td>
			</tr>
			<tr>
				<td>住所</td>
				<td>${ address }</td>
			</tr>
			<tr>
				<td>電話番号</td>
				<td>${ phoneNumber }</td>
			</tr>
		</tbody>
	</table>
	<button onclick="location.href='<%= request.getContextPath() %>/complete'">確定</button>
	<button onclick="location.href='<%= request.getContextPath() %>/form'">キャンセル</button>
</body>
</html>
<style>
table, th, td {
	border: 1px solid black;
}
</style>