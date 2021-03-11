package com.pet_board;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.pet_boardDAO;
import com.DAO.pet_submitDAO;


@WebServlet("/sendMsg")
public class sendMsg extends HttpServlet {


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		String num2 = request.getParameter("num");
		String pre = request.getParameter("pre2");
		
		int num = Integer.parseInt(num2);
		
		
		pet_submitDAO dao = new pet_submitDAO();
		
		int cnt = dao.send(id, num);
		
		if(cnt > 0) {
			response.sendRedirect("Service_user.jsp?predict=" + pre);
		}
	}

}
