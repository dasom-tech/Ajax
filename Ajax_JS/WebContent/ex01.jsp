<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JS Ajax</title>
</head>
<body>
	<h1>서버로부터 응답 받은 결과</h1>
<script>
	//JavaScript에서 Ajax를 사용할 때 XMLHttpRequest 객체 사용
	//1. XMLHttpRequest 객체 생성
	var request = new XMLHttpRequest();
	
	//2. open("전송방식", "요청정보", "비동기여부")
	request.open("GET", "data2.html", false);
	
	//3. send() : 실행
	request.send();
	
	//4. 응답데이터 처리
	alert(request.responseText);
	
	document.body.innerHTML += request.responseText;
	
</script>


</body>
</html>