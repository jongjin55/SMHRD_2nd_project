<%@page import="com.DAO.pet_boardDAO"%>
<%@page import="com.VO.pet_boardVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.io.DataInputStream"%>
<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

</head>
<body>
	<%
	pet_boardDAO dao = new pet_boardDAO();
	
ArrayList<pet_boardVO> arr = dao.selectAll();
%>
	<table border=1>

		<tr>
			<td>펫 이름</td>
			<td>펫 견종</td>
			<td>날짜</td>
			<td>파일 이름</td>
		</tr>
		<% 
		
		for(int i=0; i< arr.size(); i++) {
		out.print("<tr>");	
		out.print("<td>" + arr.get(i).getB_name() + "</td>");	
		out.print("<td>" + arr.get(i).getB_spicies() + "</td>");	
		out.print("<td>" + arr.get(i).getB_date() + "</td>");	
		out.print("<td><img width='200px' height='200px' src='Upload/" + arr.get(i).getB_image()  + "'></td>");
		out.print("</tr>");	
		}

		%>


	</table>

</body>
</html>