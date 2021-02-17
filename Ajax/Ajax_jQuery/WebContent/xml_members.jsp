<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ajax XML</title>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script>
	$(function(){
		$("#getDataBtn").click(getXmlMembers);
	});
	
	function getXmlMembers() {
		alert("getXmlMembers() 실행");
		//$.ajax(url, {설정값들});
		$.ajax("getXmlMembers", {
			//url : "getJsonMembers",
			type : "get",
			dataType : "xml", //응답되는 데이터 형식
			success : function(xmlData){
				console.log(xmlData);
				
				var tbody = "";
				//전달받은 XML 데이터 처리
				$(xmlData).find("member").each(function(){
					tbody += "<tr>";
					tbody += "<td>" + $(this).find("idx").text() + "</td>";
					tbody += "<td>" + $(this).find("name").text() + "</td>";
					tbody += "<td>" + $(this).find("age").text() + "</td>";
					tbody += "<td>" + $(this).find("addr").text() + "</td>";
					tbody += "<td>" + $(this).find("regdate").text() + "</td>";
					tbody += "</tr>";
				});
				
				$("#tbody").html(tbody);
				
			},
			error : function(jqXHR, textStatus, errorThrown ){
				alert("[예외발생] Ajax 처리실패!!! \n"
						+ "jqXHR.readyState : " + jqXHR.readyState + "\n"
						+ "textStatus : " + textStatus + "\n"
						+ "errorThrown: " + errorThrown);
			}
		});
	}
</script>
</head>
<body>
	<h1>Ajax XML 데이터 요청처리</h1>
	<button id="getDataBtn">XML 데이터 가져오기</button>
	<hr>
	<table border>
		<thead>
			<tr>
				<th>번호</th>
				<th>이름</th>
				<th>나이</th>
				<th>주소</th>
				<th>날짜</th>
			</tr>
		</thead>
		<tbody id="tbody">
			<tr>
				<td>1</td>
				<td>김유신1</td>
				<td>27</td>
				<td>서울</td>
				<td>2021-02-08</td>
			</tr>
			<tr>
				<td>2</td>
				<td>을지문덕2</td>
				<td>37</td>
				<td>대전</td>
				<td>2021-02-08</td>
			</tr>
		</tbody>
	</table>
</body>
</html>








