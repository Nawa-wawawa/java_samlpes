<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>サーブレッド連携</title>
</head>
<body>
	<ul>
		<li>身長:${param['height']}</li>
		<li>体重:${param['weight']}</li>
		<li>BMI値:<c:out value="${bmi}"/></li>
		<li>判定結果:${rank}</li>
</body>
</html>