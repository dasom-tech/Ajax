package com.bc.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/getIdName")
public class GetIdNameController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		System.out.println(">> id: " + id + ", pwd: " + pwd);
		
		//DB연동해서 로그인 확인 후 성공시 아이디, 이름 리턴
		//JSON 형태 값으로 응답 처리
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		//{"id":"hong", "name":"홍길동"}
		String result = "{\"id\":\"hong\", \"name\":\"홍길동\"}";
		out.print(result);
	}
}









