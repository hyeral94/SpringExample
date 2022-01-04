<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

<title>학생정보 입력</title>
</head>
<body>

	<div class="container">
	<h1>학생정보 추가</h1>	
	<form method="post" action="/lesson04/ex02/add_student">
		<label>이름</label><input type="text" class="form-control" name="name">
		<label>휴대폰 번호</label><input type="text" class="form-control name="phoneNumber">
		<label>이메일 주소</label><input type="text" class="form-control" name="email">
		<label>장래희망</label><input type="text" class="form-control" name="dream">
		
		<button type="submit" class="btn btn-success">추가</button>
	</form>
	</div>

</body>
</html>