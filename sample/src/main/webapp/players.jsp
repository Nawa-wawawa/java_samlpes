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

		<div class="accordion accordion-flush" id="accordionFlushExample">
			<div class="accordion-item">
				<h2 class="accordion-header">
					<button class="accordion-button collapsed" type="button"
						data-bs-toggle="collapse" data-bs-target="#flush-collapseOne"
						aria-expanded="false" aria-controls="flush-collapseOne">
						選手登録</button>
				</h2>
				<div id="flush-collapseOne" class="accordion-collapse collapse"
					data-bs-parent="#accordionFlushExample">
					<div class="accordion-body">
						<form method = "post" action = "players">
							<div class="mb-3">
								<label for="countryCode" class="form-label">国番号を入力してください</label>
								<input type="text" class="form-control"name="country_id" 
									placeholder="" aria-describedby="countryCodeHelp">
							</div>

							<div class="mb-3">
								<label for="uniformNumber" class="form-label">背番号を入力してください</label>
								<input type="number" class="form-control" name="uniform_num"
									placeholder="10" aria-describedby="uniformNumberHelp">
							</div>

							<div class="mb-3">
								<label for="position" class="form-label">ポジションを入力してください</label>
								<input type="text" class="form-control" name="position"
									placeholder="FW" aria-describedby="positionHelp">
							</div>

							<div class="mb-3">
								<label for="playerName" class="form-label">名前を入力してください</label> <input
									type="text" class="form-control" name="name"
									placeholder="山田 太郎" aria-describedby="playerNameHelp">
							</div>

							<div class="mb-3">
								<label for="team" class="form-label">所属を入力してください</label> <input
									type="text" class="form-control" name="club" placeholder="東京FC"
									aria-describedby="teamHelp">
							</div>

							<div class="mb-3">
								<label for="birthdate" class="form-label">誕生日を入力してください</label> <input
									type="date" class="form-control" name="birth"
									aria-describedby="birthdateHelp">
							</div>

							<div class="mb-3">
								<label for="height" class="form-label">身長を入力してください</label> <input
									type="text" class="form-control" name="height" placeholder="170"
									aria-describedby="heightHelp">
							</div>

							<div class="mb-3">
								<label for="weight" class="form-label">体重を入力してください</label> <input
									type="text" class="form-control" name="weight" placeholder="65"
									aria-describedby="weightHelp">
							</div>

							<button type="submit" class="btn btn-primary">登録！</button>
						</form>
					</div>
				</div>
			</div>
			<div class="accordion-item">
				<h2 class="accordion-header">
					<button class="accordion-button collapsed" type="button"
						data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo"
						aria-expanded="false" aria-controls="flush-collapseTwo">
						選手リスト</button>
				</h2>
				<div id="flush-collapseTwo" class="accordion-collapse collapse"
					data-bs-parent="#accordionFlushExample">
					<div class="accordion-body">
						<div class="accordion-body">
							<ul class="list-group">
								<c:forEach var="item" items="${players}">
									<li class="list-group-item">${item.getPosition()}:${item.getName()}</li>
								</c:forEach>
							</ul>
						</div>
					</div>
				</div>
				<div class="accordion-item">
					<h2 class="accordion-header">
						<button class="accordion-button collapsed" type="button"
							data-bs-toggle="collapse" data-bs-target="#flush-collapseThree"
							aria-expanded="false" aria-controls="flush-collapseThree">
							Accordion Item #3</button>
					</h2>
					<div id="flush-collapseThree" class="accordion-collapse collapse"
						data-bs-parent="#accordionFlushExample">
						<div class="accordion-body">
							Placeholder content for this accordion, which is intended to
							demonstrate the
							<code>.accordion-flush</code>
							class. This is the third item's accordion body. Nothing more
							exciting happening here in terms of content, but just filling up
							the space to make it look, at least at first glance, a bit more
							representative of how this would look in a real-world
							application.
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script src="js/bootstrap.bundle.min.js" defer></script>
</body>
</html>