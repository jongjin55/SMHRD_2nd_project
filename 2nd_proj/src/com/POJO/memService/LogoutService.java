package com.POJO.memService;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.VO.memberVO;

@WebServlet("/LogoutService")
public class LogoutService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
				
				HttpSession session = request.getSession();
				memberVO vo = (memberVO)session.getAttribute("vo");
				
				session.removeAttribute("vo");

			System.out.println("여기 여기여기");
				response.sendRedirect("home.jsp");
				

			}

		}