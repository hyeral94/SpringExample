<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL core 라이브러리</title>
</head>
<body>
	<h2> 변수 정의 하기 (c:set)</h2>

	<!-- 변수 이름 정의 : var   /-> 닫는 태그 -->
	<!--  int number1 = 100; 과 같은 문법 -->
	<c:set var="number1" value="100" />
	
	<h4>${number1 }</h4>
	
	<c:set var="number2">200</c:set>
	
	<h4>${number2 }</h4>
	
	<h4>${number1 + number2 }</h4>
	
	<h2> 변수 출력 하기(c:out)</h2>
	<h4><c:out value="900"></c:out></h4>
	<h4><c:out value="${number1 }" /></h4>
	
	<c:out value="<script>alert('출력')</script>" />
	<c:out value="<script>alert('출력')</script>" escapeXml="true" />
	<c:out value="<script>alert('출력')</script>" escapeXml="false" />

	<h2> 조건문 </h2>
	<c:if test="false">
		<h4>조건이 참이다</h4>
	</c:if>
	
	<!-- if(number1 > 50)과 동일 -->
	<c:if test="${number1 > 50 }">
		<h4>number1은 50보다 크다</h4>
	</c:if>
	
	<!--  if(number1 == 100)과 동일-->
	<c:if test="${number1 eq 100 }" />
	
	<!--  if(number1 != 200)과 동일-->
	<c:if test="${number1 ne 200 }" />
	
	
	<c:if test="${empty number5 }">
		<h4>비어 있다.</h4>
	</c:if>		

	
</body>
</html>