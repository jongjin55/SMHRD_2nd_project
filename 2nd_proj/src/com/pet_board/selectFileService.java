package com.pet_board;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.pet_boardDAO;
import com.VO.pet_boardVO;


@WebServlet("/selectFileService")
public class selectFileService extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		pet_boardDAO dao = new pet_boardDAO();
		
		try {
			
			ArrayList<pet_boardVO> arr = dao.selectAll();
			
			if(arr != null) {
				request.setAttribute("arr", arr);
			}else {
				System.out.println("배열이 비었습니다.");
			}
			RequestDispatcher dis = request.getRequestDispatcher("pet/Services.jsp");
			dis.forward(request, response);
			System.out.println("이동합니다");
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}
