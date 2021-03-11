package com.board;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.pet_qaDAO;
import com.DAO.pet_tipDAO;
import com.VO.memberVO;
import com.VO.pet_qaVO;

/**
 * Servlet implementation class write
 */
@WebServlet("/pet_qaWrite")
public class pet_qaWrite extends HttpServlet {
   
   protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      // TODO Auto-generated method stub
      request.setCharacterEncoding("euc-kr");
	   
	   HttpSession session = request.getSession();
	   
	   memberVO vo = (memberVO)session.getAttribute("vo");
	   
      String id = vo.getM_id();
      String title = request.getParameter("title");
      String conts = request.getParameter("conts");
      int hit = 0;
      System.out.println(title + "¼­ºí¸´");
      pet_qaDAO dao = new pet_qaDAO();
      int cnt = dao.insert(id, title, conts, hit);
      
      
      if(cnt > 0) {
         response.sendRedirect("board_QA/qa_board.jsp");
      }
   }

}