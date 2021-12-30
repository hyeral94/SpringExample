<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

<title>회원정보 추가</title>
</head>
<body>
	<div class="container"> 
		<h1>회원정보 추가</h1>
		
		<form method="post" action="/lesson04/ex01/add_user">
			<label>이름 : </label><input type="text" class="form-control" name="name">
			<label>생년월일 : </label><input type="text" class="form-control" name="yyyymmdd">
			<label>자기소개</label>
			<textarea rows="10" cols="5" class="form-control" name="introduce"></textarea>
			<label>이메일 : </label><input type="text" class="form-control" name="email">
			
			<input type="submit" value="추가" class="btn btn-success">
		</form>
 	</div>
	

</body>
</html>