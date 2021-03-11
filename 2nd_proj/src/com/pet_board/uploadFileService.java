package com.pet_board;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.DAO.pet_boardDAO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;


@WebServlet("/uploadFileService")
public class uploadFileService extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("euc-kr");
		
		
		ServletContext context = getServletContext(); 
		String saveDir = context.getRealPath("Upload");
				//"59.0.100.45/upload/";
		
		int maxSize = 10*1024*1024; // 10MB
		String encoding = "euc-kr";
		
		System.out.println("절대경로 >> " + saveDir);
		
		boolean isMulti = ServletFileUpload.isMultipartContent(request);
		
		if(isMulti) {
			MultipartRequest multi = new MultipartRequest(request, saveDir, maxSize, encoding, new DefaultFileRenamePolicy());
			//"C:\\Users\\smhrd\\Desktop\\web\\fe_ver1\\WebContent\\Upload"
			pet_boardDAO dao = new pet_boardDAO();
			
			String id = "admin";
			String name = multi.getParameter("p_name");
			String title = multi.getParameter("p_title");
			String age = multi.getParameter("p_age");
			String gender = multi.getParameter("p_gender");
			String food = multi.getParameter("p_food");
			String spi = multi.getParameter("p_spicies");
			String conts = multi.getParameter("p_conts");
			String fileName = multi.getFilesystemName("filename");
			
			int age2 = Integer.parseInt(age);
			int food2 = Integer.parseInt(food);
			
			System.out.println(name + " " + spi + " " + fileName);
			
			try {
				int cnt = dao.uploadFile(id, name, title, age2, gender, food2, spi, conts, fileName);
				String moveURL = "";
				
				if(cnt > 0) {
					System.out.println("저장완료");
					moveURL ="pet_Services.jsp";
				}else {
					System.out.println("저장실패");
					moveURL ="pet_write.html";
				}
				
				response.sendRedirect(moveURL);
				
			} catch (Exception e) {
				e.printStackTrace();
			}
			
		}else {
			System.out.println("일반 전송 Form입니다.");
		}
	}

}
