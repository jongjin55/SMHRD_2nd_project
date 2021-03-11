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

@WebServlet("/pet_tipRewrite")
public class pet_tipRewrite extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		HttpSession session = request.getSession();

		memberVO vo = (memberVO) session.getAttribute("vo");

		String id = vo.getM_id();
		String co = request.getParameter("code");
		String title = request.getParameter("title");
		String cont = request.getParameter("conts");

		int code = Integer.parseInt(co);

		pet_tipDAO dao = new pet_tipDAO();
		int cnt = dao.update(id, title, cont, code);

		if (cnt > 0) {

			response.sendRedirect("board_Tip/tip_board.jsp");
		}
	}

}