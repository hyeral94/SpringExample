<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

<title>사용자 정보</title>
</head>
<body>
	<div class="container">
		<h1>${subject}</h1>
		
		<table class="table table-striped">
			<tr>
				<th>이름</th>
				<td>${result.name}</td>	
			</tr>
			<tr>
				<th>생년월일</th>
				<td>${result.yyyymmdd}</td>	
			</tr>
			<tr>
				<th>이메일</th>
				<td>${result.email}</td>	
			</tr>
			
		
		</table>
	
	
	</div>

</body>
</html>