<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/bootstrap.min.css">
<title>Coreタグライブラリ</title>
</head>
<body>
	<div class="container">
		<ul>
			<c:forEach var="item" items="${maps}">
				<li class="list-group-item">${item.key}:${item.value}</li>
			</c:forEach>
		</ul>
	</div>

</body>
</html>