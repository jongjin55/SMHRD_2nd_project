package com.pet_board;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.pet_boardDAO;
import com.DAO.pet_submitDAO;

@WebServlet("/petFalse")
public class petFalse extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String num2 = request.getParameter("num");
		
		int num = Integer.parseInt(num2);
		pet_submitDAO dao = new pet_submitDAO();
		
		int cnt = dao.subDelete(num);
		
		if(cnt > 0) {
			response.sendRedirect("pet_approval.jsp");
		}
	}

}
