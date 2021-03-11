package com.POJO.memService;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.memberDAO;
import com.VO.memberVO;


@WebServlet("/LoginService")
public class LoginService extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stubpackage com.POJO.memService;

		
		System.out.println("로그인기능을 수행하겠습니다");

		request.setCharacterEncoding("euc-kr");

		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		System.out.println(id);
		System.out.println(pw);
		

		memberDAO dao = new memberDAO();
		memberVO vo = dao.Login(id, pw);

			System.out.println(vo);

			HttpSession session = request.getSession();

			session.setAttribute("vo", vo);

			
			response.sendRedirect("home.jsp");
			
		}
	}