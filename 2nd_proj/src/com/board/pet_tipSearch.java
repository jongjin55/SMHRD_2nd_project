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

import com.DAO.pet_tipDAO;
import com.VO.pet_tipVO;



@WebServlet("/pet_tipSearch")
public class pet_tipSearch extends HttpServlet {

   protected void service(HttpServletRequest request, HttpServletResponse response)
         throws ServletException, IOException {

      String data = request.getParameter("search_txt");
      System.out.println(data);
      String ser = request.getParameter("ser");

      pet_tipDAO dao = new pet_tipDAO();
      

      if (data != null) {
         ArrayList<pet_tipVO> arr = dao.search(ser, data);
         
         if (arr != null) {
            
            HttpSession session = request.getSession();
            
            session.setAttribute("Ser_arr", arr);
            response.sendRedirect("board_Tip/tip_board.jsp");
            
         } 
      } else {
         response.sendRedirect("board_Tip/tip_board.jsp");
      }
   }

}