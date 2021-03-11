package com.board;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.pet_qaDAO;
import com.VO.memberVO;


@WebServlet("/pet_qaRewrite")
public class pet_qaRewrite extends HttpServlet {

   protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      
	   HttpSession session = request.getSession();
	   
	   memberVO vo = (memberVO)session.getAttribute("vo");
	   
      String id = vo.getM_id();
      String co = request.getParameter("code");
      String title = request.getParameter("title");
      String cont = request.getParameter("conts");
      
      int code = Integer.parseInt(co);
      
      pet_qaDAO dao = new pet_qaDAO();
      int cnt = dao.update(id, title, cont, code);
   
   
      if(cnt > 0) {
         
         response.sendRedirect("board_QA/qa_board.jsp");
      }
   }
   

}