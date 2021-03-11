package com.board;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.pet_qaDAO;


@WebServlet("/pet_qaDelete")
public class pet_qaDelete extends HttpServlet {

   protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
   

      request.setCharacterEncoding("euc-kr");

      
      String code = request.getParameter("code");
      String del = request.getParameter("del");
      
      pet_qaDAO dao = new pet_qaDAO();
      int cnt = dao.delete(code);
      
      System.out.println(code);
      System.out.println("여기에서 뜬다");
      
      if(cnt > 0) {
         
         response.sendRedirect("board_QA/qa_board.jsp");
      }
      
   }

}