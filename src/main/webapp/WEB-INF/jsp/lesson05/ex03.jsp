<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>     
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>fmt 라이브러리</title>
</head>
<body>

	<c:set var="number" value="12345678" />
	<h2>출력</h2>
	<fmt:formatNumber value="${number }" /> <br>
	
	<!--  groupingUsed : 콤마 표현(true), 제거(false) -->
	
	<fmt:formatNumber value="${number }" type="number" groupingUsed="false" />
	<br>
	
	<%--percent : 숫자에 100을 곱한 결과 --%>
	<fmt:formatNumber value="1" type="percent" />

	<%-- 40% 표현 --%>
	<fmt:formatNumber value="0.4" type="percent" />
	<br>
	
	<%-- currency : 원 표시--%>
	통화(원) : <fmt:formatNumber value="${number }" type="currency" /> 
	<br>
	
	<%-- currencySymbol : 통화 단위 변경 --%>
	통화(달러) : <fmt:formatNumber value="${number }" type="currency" currencySymbol="$" />
	
	<%-- 값을 달러라는 변수에 저장 --%>
	<fmt:formatNumber value="${number }" type="currency" currencySymbol="$" var="daller" />
	<br>
	통화 변수 출력 : ${daller }
	
	<br>
	<h2>패턴</h2>
	<%-- pattern : . 뒤에 개수 --%>
	<fmt:formatNumber value="3.14" pattern="0.0000" /> <br> <%-- 0 : value 값을 넘어가도 0으로 채워짐. --%>
	<fmt:formatNumber value="3.141592" pattern="#.####" /> <%-- # : 표시할 수 있는 만큼 표현(반올림 기반) --%>
	
	<h2>**날짜**</h2>
	<%-- value : model 에 설정했던 key 이름 --%>
	<fmt:formatDate value="${today }" pattern="yyyy년 MM월 dd일 HH시 mm분 ss초" />
	
	<%-- var : 변수에 저장하기 위한 속성 --%>
	<fmt:formatDate value="${today }" pattern="yyyy/MM/dd hh:mm:ss" var="dateString"/>
	<br>
	데이트 문자열 변수 : ${dateString }
	
	<h2>문자열을 Date 객체로 변환</h2>
	<%-- 문자열을 Date 객체로 변환시 pattern은 value 값에 지정한 문자열 패턴과 똑같이 입력 해야 함. --%>
	<fmt:parseDate value="${dateString }" pattern="yyyy/MM/dd hh:mm:ss" var="date" />
	
	<fmt:formatDate value="${date }" pattern="yyyy년 MM월 dd일" />
	
	
	
	
</body>
</html>