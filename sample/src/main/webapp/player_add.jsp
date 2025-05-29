<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/bootstrap.min.css">
<title>Coreタグライブラリ</title>
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
					<li class="nav-item"><a class="nav-link" href="">更新</a></li>
					<li class="nav-item"><a class="nav-link" href="">削除</a></li>
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
					<h3>選手登録</h3>
				</div>
				<div class="col-9">
					<h4>選手データの登録をします。</h4>
					<form method="post" action="players_addServlet">
						<div class="mb-3">
							<label for="countryCode" class="form-label">国番号を入力してください</label>
							<input type="number" class="form-control" name="country_id"
								required>
						</div>
						<div class="mb-3">
							<label for="uniformNumber" class="form-label">背番号を入力してください</label>
							<input type="number" class="form-control" name="uniform_num"
								placeholder="10" required>
						</div>
						<div class="mb-3">
							<label for="position" class="form-label"> ポジションを入力してください</label>
							<div class="form-floating">
								<select class="form-select" id="floatingSelect" name="position"
									aria-label="Floating label select example">
									<option value="GK">GK</option>
									<option value="DF">DF</option>
									<option value="MF">MF</option>
									<option value="FW">FW</option>
								</select>
							</div>

						</div>
						<div class="mb-3">
							<label for="playerName" class="form-label">名前を入力してください</label> <input
								type="text" class="form-control" name="name" placeholder="山田 太郎"
								required>
						</div>
						<div class="mb-3">
							<label for="team" class="form-label">所属を入力してください</label> <input
								type="text" class="form-control" name="club" placeholder="東京FC"
								required>
						</div>
						<div class="mb-3">
							<label for="birthdate" class="form-label">誕生日を入力してください</label> <input
								type="date" class="form-control" name="birth" required>
						</div>
						<div class="mb-3">
							<label for="height" class="form-label">身長を入力してください</label> <input
								type="number" class="form-control" name="height"
								placeholder="170" required>
						</div>
						<div class="mb-3">
							<label for="weight" class="form-label">体重を入力してください</label> <input
								type="number" class="form-control" name="weight"
								placeholder="65" required>
						</div>
						<button type="submit" class="btn btn-primary">登録！</button>
					</form>
				</div>
			</div>
		</div>
	</div>

</body>
</html>