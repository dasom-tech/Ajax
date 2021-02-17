<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ajax JSON</title>
</head>
<body>
	<h1>JSON 데이터 요청 처리</h1>

<script>
	//1. XMLHttpRequest 객체 생성
	var request = new XMLHttpRequest();
	
	//readyState 상태가 변할 때 실행할 콜백함수 작성	
	request.onreadystatechange = requestAjax;
	
	//2. open("전송방식", "요청정보", "비동기여부")
	request.open("GET", "data.json", false);
	
	//3. send() : 실행
	request.send();
	
	function requestAjax() {
		if (request.readyState == 4 && request.status == 200) {
			//받은 데이터 확인
			alert("request.responseText : "+ request.responseText);
			
			//문자열 -> JS객체화 : JSON.parse() 사용
			var json = JSON.parse(request.responseText);
			alert("JSON.parse() 처리후 : " + json);
			
			//JS 배열객체 데이터 추출
			var output = "";
			for (let i=0; i<json.length; i++) {
				output += "<h2>";
				output += json[i].name + " : " + json[i]["price"];
				output += "</h2>";
			}
			
			//4. 응답데이터 처리
			document.body.innerHTML += output;
		}
	}
</script>		
</body>
</html>






