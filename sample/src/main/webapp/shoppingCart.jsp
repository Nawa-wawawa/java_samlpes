<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>
</head>
<body>
	<h3>セッションのサンプル</h3>

	<a href="shoppingCart">表示の更新</a>

	<a href="shoppingCart?reset">注文のリセット</a>


	<form action="shoppingCart" method="post">
		<br> 新しい注文：<input type="text" name="newOrder" /><br> <input
			type="submit" name="order" value="注文する" />
	</form>

	<br>
	<c:if test="${not empty orders }">
	買い物かごの中<br>
		<ol>
			<c:forEach items="${orders}" var="order">
				<li>${order}</li>
			</c:forEach>
		</ol>
	</c:if>

</body>
</html>