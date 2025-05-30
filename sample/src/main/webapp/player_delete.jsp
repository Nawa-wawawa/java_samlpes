<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/bootstrap.min.css">
<title>ワールドカップ2014</title>
</head>
<body>
	<nav class="navbar navbar-expand-lg bg-body-tertiary">
		<div class="container-fluid">
			<a class="navbar-brand">World Cup 2014</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNav"
				aria-controls="navbarNav" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="players">一覧</a></li>
					<li class="nav-item"><a class="nav-link"
						href="players_addServlet">登録</a></li>
					<li class="nav-item"><a class="nav-link"
						href="players_updateServlet">更新</a></li>
					<li class="nav-item"><a class="nav-link"
						href="players_deleteServlet">削除</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<div class="container">
		<div class="container text-center">
			<div class="row">
				<div class="col-12">
					<h1>ワールドカップ2014</h1>
				</div>
			</div>
			<div class="row">
				<div class="col-3">
					<h3>選手データの削除</h3>
				</div>
				<div class="col-9">
					<!-- 選手データの削除 -->
					<h4 class="mb-3">選手データの削除をします。</h4>
					<ul class="list-group">
						<c:forEach var="item" items="${players}">
							<div class="row">
								<div class="col-10">
									<li class="list-group-item">${item.getPosition()}:${item.getName()}</li>
								</div>
								<div class="col-2">
									<form method="post" action="players_deleteServlet">
										<input type="hidden" name="id" value="${item.getId()}">
										<button type="submit" class="btn btn-outline-danger">削除</button>
									</form>
								</div>
							</div>
						</c:forEach>
					</ul>
				</div>
			</div>
		</div>
	</div>
	</div>
</body>

</html>