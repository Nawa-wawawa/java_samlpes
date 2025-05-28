<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Core タグライブラリ</title>
</head>
<body>
	あなたの得点は<c:out value = "${point}" />-->です。
	<br />

	<c:if test="${point > 60}">
		<span style="color: Red;">合格です。</span>
	</c:if>
</body>
</html>