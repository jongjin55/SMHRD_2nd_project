package com.POJO.memService;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.memberDAO;

@WebServlet("/DeleteService")
public class DeleteService extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String code = request.getParameter("num");
		int num = Integer.parseInt(code);
		System.out.println(num);
		
		memberDAO dao = new memberDAO();
		
		int cnt = dao.Delete(num);
		
		System.out.println("¿©±â1");
		
		if(cnt > 0) {
			
			response.sendRedirect("memController.jsp");
		}
	}

}
