<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 選手データの更新 -->
    <h4 class="mt-5">選手データの更新をします。</h4>
    <form method="post" action="players">
      <div class="mb-3">
        <label for="countryCode" class="form-label">国番号を入力してください</label>
        <input type="text" class="form-control" name="country_id" required>
      </div>
      <div class="mb-3">
        <label for="uniformNumber" class="form-label">背番号を入力してください</label>
        <input type="number" class="form-control" name="uniform_num" placeholder="10" required>
      </div>
      <div class="mb-3">
        <label for="position" class="form-label">ポジションを入力してください</label>
        <input type="text" class="form-control" name="position" placeholder="FW" required>
      </div>
      <div class="mb-3">
        <label for="playerName" class="form-label">名前を入力してください</label>
        <input type="text" class="form-control" name="name" placeholder="山田 太郎" required>
      </div>
      <div class="mb-3">
        <label for="team" class="form-label">所属を入力してください</label>
        <input type="text" class="form-control" name="club" placeholder="東京FC" required>
      </div>
      <div class="mb-3">
        <label for="birthdate" class="form-label">誕生日を入力してください</label>
        <input type="date" class="form-control" name="birth" required>
      </div>
      <div class="mb-3">
        <label for="height" class="form-label">身長を入力してください</label>
        <input type="text" class="form-control" name="height" placeholder="170" required>
      </div>
      <div class="mb-3">
        <label for="weight" class="form-label">体重を入力してください</label>
        <input type="text" class="form-control" name="weight" placeholder="65" required>
      </div>
      <button type="submit" class="btn btn-primary">更新！</button>
    </form>
</body>
</html>