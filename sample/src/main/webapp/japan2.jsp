<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="jakarta.tags.core" prefix="c"%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ポストデータ</title>
</head>
<body>
	<div>
		<%
		out.println("こんにちは " + request.getParameter("name2") + " = サン");
		%>
	</div>
	
	<div>こんにちは <c:out value = "${name}" /> = サン</div>



</body>
</html>