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
	/* XMLHttpRequest.readyState : 데이터 전달 결과 상태를 표시
	0 : 객체생성, open 안한 상태
	1 : open상태, send 안된 상태
	2 : send 진행한 상태, 데이터가 발견되지 않은 상태
	3 : 일부 데이터만 받은 상태(데이터를 받는 중)
	4 : 데이터를 전부 응답받은 상태
	
	XMLHttpRequest.status : 응답 결과 상태값
	200(성공), 4xx(클라이언트 오류), 5xx(서버측 오류 - 개발자 실수)
	******************/
	//1. XMLHttpRequest 객체 생성
	var request = new XMLHttpRequest();
	
	var cnt = 1;
	//readyState 상태가 변할 때 실행할 콜백함수 작성
	request.onreadystatechange = function() {
		alert("onreadystatechange 실행 : \n"
				+ (cnt++) + "번째 실행\n"
				+ "readyState : " + request.readyState + "\n"
				+ "status : " + request.status);
	};
	
	//2. open("전송방식", "요청정보", "비동기여부")
	request.open("GET", "data2.html", false);
	
	//3. send() : 실행
	request.send();
	
	//4. 응답데이터 처리
	document.body.innerHTML += request.responseText;
</script>	
</body>
</html>






