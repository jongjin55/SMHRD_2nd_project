package com.board;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.pet_qaDAO;
import com.VO.pet_qaVO;



@WebServlet("/pet_qaSearch")
public class pet_qaSearch extends HttpServlet {

   protected void service(HttpServletRequest request, HttpServletResponse response)
         throws ServletException, IOException {

      String data = request.getParameter("search_txt");
      System.out.println(data);
      String ser = request.getParameter("ser");

      pet_qaDAO dao = new pet_qaDAO();
      

      if (data != null) {
         ArrayList<pet_qaVO> arr = dao.search(ser, data);
         
         if (arr != null) {
            
            HttpSession session = request.getSession();
            
            session.setAttribute("Ser_arr", arr);
            response.sendRedirect("board_QA/qa_board.jsp");
            
         } 
      } else {
         response.sendRedirect("board_QA/qa_board.jsp");
      }
   }

}