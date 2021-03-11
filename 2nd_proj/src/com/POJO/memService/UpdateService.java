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


@WebServlet("/UpdateService")
public class UpdateService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		memberVO vo = (memberVO)session.getAttribute("vo");

		// 2. ����ڰ� �Է��� ���� �������ÿ�(�н�����, ��ȭ��ȣ, �ּ�)
		request.setCharacterEncoding("euc-kr");

		String pw = request.getParameter("pswd1");
		String name = request.getParameter("name");
		String confmKey = request.getParameter("confmKey");
		String phoneNo = request.getParameter("phoneNo");

		// 3.JDBC�ڵ带 �̿��Ͽ� �α����� �̸����� ������ �����Ͻÿ�.
		memberDAO dao = new memberDAO();		
		int cnt =dao.Update(vo.getM_email(), pw, confmKey, phoneNo);
		
		System.out.println("�����ִ�");
		
		//���� ������Ʈ�ϱ�
		memberVO vo_update = new memberVO(pw, name, confmKey, phoneNo);
		session.setAttribute("vo", vo_update);
				
		response.sendRedirect("dog_club_template_2595/template/home.jsp");
	}

}
