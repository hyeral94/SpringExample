<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>

<title></title>
</head>
<body>
	<h1>회원 정보 추가</h1>
	<form method="post" action="/lesson06/add_user" id="joinForm">
	<label>이름</label><input type="text" name="name" id="nameInput"><button type="button" id="duplicateBtn">중복확인</button><br>
	<label>생년월일</label><input type="text" name="yyyymmdd" id="yyyymmddInput"><br>
	<label>자기소개</label><br>
	<textarea rows="10" cols="50" name="introduce" id="introduceInput"></textarea><br>
	<label>이메일 주소 : </label><input type="text" name="email" id="emailInput"><br>
<!--  	<button type="submit" id="submitBtn">추가</button>  --> 
	<button type="button" id="addBtn">추가</button>  <!--  click 이벤트시에는 타입이 버튼이어야함 -->
	</form>
	<script>
		$(document).ready(function(){
			
			var isDuplicateName = true;
			
			$("#joinForm").on("submit", function(){
				let name = $("#nameInput").val();
				let yyyymmdd = $("#yyyymmddInput").val();
				let introduce = $("#introduceInput").val();
				let email = $("#emailInput").val();
				
				if(name == ""){
					alert("이름을 입력하세요");
					return false;
				}
				if(yyyymmdd = ""){
					alert("생일을 입력하세요");
					return false;;
				}
				if(introduce = ""){
					alert("자기소개를 입력하세요");
					return false;;
				}
				if(email = ""){
					alert("이메일을 입력하세요");
					return false;;
				}
				
				$.ajax({
					type:"post",
					url:"/lesson06/ex01/add_user",
					data:{"name":name, "yyyymmdd":yyyymmdd, "introduce":introduce, "email":email},
					success:function(data){
						if(data == "success"){
							alert("입력성공");
						}else{
							alert("입력실패");
						}		
					},
					error:function(){
						alert("에러발생");
					}
				});
				
				return false;
				
			
				
			});
			
			$("#addBtn").on("click", function(){
				
				let name = $("#nameInput").val();
				let yyyymmdd = $("#yyyymmddInput").val();
				let introduce = $("#introduceInput").val();
				let email = $("#emailInput").val();
				
				if(name == ""){
					alert("이름을 입력하세요");
					return false;
				}
				
				//중복체크 유효성 검사ㅏ
				if(isDuplicateName){
					alert("중복된 이름 입니다.");
					return;
				}
				
				
				if(yyyymmdd = ""){
					alert("생일을 입력하세요");
					return false;;
				}
				if(introduce = ""){
					alert("자기소개를 입력하세요");
					return false;;
				}
				if(email = ""){
					alert("이메일을 입력하세요");
					return false;;
				}
				
				$.ajax({
					type:"post",
					url:"/lesson06/ex01/add_user",
					data:{"name":name, "yyyymmdd":yyyymmdd, "introduce":introduce, "email":email},
					success:function(data){
						if(data == "success"){
							alert("입력성공");
						}else{
							alert("입력실패");
						}		
					},
					error:function(){
						alert("에러발생");
					}
				});
				
				
			})
			
			$("#duplicateBtn").on("click", function(){
				
				let name = $("#nameInput").val();
					if(name == ""){
						alert("이름을 입력해주세요");
						return;
					}
					
					$.ajax({
						type:"get",
						url:"/lesson06/ex02/duplicate_name",
						data:{"name":name},
						success:function(data){
							if(data.isDuplicate == "true"){
								alert("중복입니다.");
								isDuplicateName = true;
							}else{
								alert("사용 가능합니다");
								isDuplicateName = false;
							}
						},
						error:function() {
							alert("에러발생");
						}
					});
					
				
			});
		});
	</script>
</body>
</html>