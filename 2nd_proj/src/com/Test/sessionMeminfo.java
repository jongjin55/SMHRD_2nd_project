package com.Test;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.VO.memberVO;

@WebServlet("/sessionMeminfo")
public class sessionMeminfo extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("euc-kr");
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		System.out.println(id);
		System.out.println(pw);
		String name = request.getParameter("name");
		String road1 = request.getParameter("road");
		String road2 = request.getParameter("road2");
		String birth1 = request.getParameter("birth");
		String email = request.getParameter("email");
		String gender = request.getParameter("gender");
		String phone = request.getParameter("phone");
		
		String address = road1 + " " + road2;
		
		String birth = birth1.substring(0, 10);
		
		System.out.println(birth + "<< 여기 " + " 주소 >> " + address);
		
		HttpSession session = request.getSession();
		
		memberVO vo2 = new memberVO(id, pw, address, phone, birth1, gender, email, name);
		
		session.setAttribute("join", vo2);
		
		
		
		response.sendRedirect("Search.jsp");
		
	}

}
