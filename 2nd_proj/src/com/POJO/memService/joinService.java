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

@WebServlet("/joinService")
public class joinService extends HttpServlet {


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		HttpSession session = request.getSession();
		
		memberVO vo2 = (memberVO)session.getAttribute("join");
		
		
		memberDAO dao = new memberDAO();
		
		
		int cnt = dao.Join(vo2.getM_id(), vo2.getM_pw(), vo2.getM_address(), vo2.getM_phone(), vo2.getM_birth(), vo2.getM_gender(), vo2.getM_email(), vo2.getM_name());
		
		if(cnt > 0) {
			
			response.sendRedirect("home.jsp");
		}
	}

}
