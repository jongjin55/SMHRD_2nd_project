<%@page import="com.VO.memberVO"%>
<%@page import="com.DAO.memberDAO"%>
<%@page import="java.util.ArrayList"%>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

<style>
table.type11 {
	border-collapse: separate;
	border-spacing: 1px;
	text-align: center;
	line-height: 1.5;
	margin: auto;
}

table.type11 th {
	width: 155px;
	padding: 10px;
	font-weight: bold;
	vertical-align: top;
	color: #fff;
	background: #037FBB;
}

table.type11 td {
	width: 155px;
	padding: 10px;
	vertical-align: top;
	border-bottom: 1px solid #ccc;
	background: #eee;
}
</style>

</head>



<body>


	<table class="type11">
		<catpion align="center">
		<h2 style="font-size: 40px; font-weight: bold;">회원관리</h2>
		</catpion>

		<thead>
			<tr width="10%">
				<th scope="cols">회원번호</th>
				<th scope="cols">아이디</th>
				<th scope="cols">이름</th>
				<th scope="cols">주소</th>
				<th scope="cols">핸드폰 번호</th>
				<th scope="cols">생일</th>
				<th scope="cols">성별</th>
				<th scope="cols">이메일</th>
				<th scope="cols">추방여부</th>
			</tr>
		</thead>
		<tbody>


			<%
				memberDAO dao = new memberDAO();
			ArrayList<memberVO> arr = dao.Select();

			for (int i = 0; i < arr.size(); i++) {

				out.print("<tr class='tr'>");
				out.print("<td>" + arr.get(i).getM_code() + "</td>");
				out.print("<td>" + arr.get(i).getM_id() + "</td>");
				out.print("<td>" + arr.get(i).getM_name() + "</td>");
				out.print("<td>" + arr.get(i).getM_address() + "</td>");
				out.print("<td>" + arr.get(i).getM_phone() + "</td>");
				out.print("<td>" + arr.get(i).getM_birth() + "</td>");
				out.print("<td>" + arr.get(i).getM_gender() + "</td>");
				out.print("<td>" + arr.get(i).getM_email() + "</td>");
				out.print("<td><a href ='DeleteService?num=" + arr.get(i).getM_code() + "'> 삭제  </a></td>");
				out.print("</tr>");
			}
			%>
			<tr>
				<td colspan="9"><a href="home.jsp"><button
							style="width: 100px; padding: 10px; vertical-align: top; background: white">
							뒤로가기</button></a></td>
			</tr>
		</tbody>
	</table>
</body>
</html>