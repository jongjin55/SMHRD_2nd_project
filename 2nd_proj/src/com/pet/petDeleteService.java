package com.pet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.pet_boardDAO;

@WebServlet("/petDeleteService")
public class petDeleteService extends HttpServlet {


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("안에 들어왔습니다");
		String num2 = request.getParameter("num");
		
		int num = Integer.parseInt(num2);
		
		
		pet_boardDAO dao = new pet_boardDAO();
		
		int cnt =  dao.deleteOne(num);
		
		if(cnt > 0) {
			
			response.sendRedirect("pet_Services.jsp");
		}
	}

}
