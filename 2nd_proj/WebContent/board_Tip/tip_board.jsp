
<%@page import="com.VO.memberVO"%>
<%@page import="com.DAO.pet_tipDAO"%>
<%@page import="com.VO.pet_tipVO"%>
<%@page import="java.util.ArrayList"%>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

<style>
body {
	line-height: 2em;
	font-family: "맑은 고딕"
}

.table_com {
	width: 800px;
	margin: auto;
	border-collapse: collapse;
	text-align: center;
}

p {
	text-align: right;
	width: 100%;
	height: 40px;
	line-height: 40px;
	border-top: 2px solid #6a6a6a;
	border-bottom: 1px solid #6a6a6a;
}

#sub_tit {
	width: 100%;
	margin-bottom: 25px;
}

#table_mar {
	height: 40px;
	line-height: 30px;
}

.search {
	text-align: left;
}

#row1 {
	background-color: #c9c9c9;
	font-size: 12pt;
	font-weight: bold;
}

#row2 {
	font-size: 10pt;
	border-bottom: 1px solid silver;
	vertical-align: baseline;
}

.btn_wr {
	background-color: #040404;
	border: none;
	color: white;
	padding: 10px 20px;
	text-decoration: none;
	margin: 4px 2px;
	cursor: pointer;
}

.tbl_line {
	border-bottom: 1px solid black;
}

a {
	text-decoration: none;
}
</style>
</head>

<body>



	<div id="sub_tit">

		<p>커뮤티니 > Tip</p>

	</div>




	<div id="table_mar">

		<table class="table_com">
			<tr>
				<form action="../pet_tipSearch" method="get">
					<td colspan="6" class="search"><select name="ser">
							<option value="t_title">제목</option>
							<option value="t_content">내용</option>
					</select> <input type="text" name="search_txt" size="20px"> <input
						type="submit" value="검색"></td>
				</form>
			</tr>
			<tr class="tbl_line" align="center" id="row1">
				<td width="10%">No</td>
				<td width="45%">제목</td>
				<td width="20%">작성자</td>
				<td width="15%">날짜</td>
				<td width="10%">조회 수</td>
			</tr>

			<%
				pet_tipDAO dao = new pet_tipDAO();

			ArrayList<pet_tipVO> arr = new ArrayList<pet_tipVO>();
			ArrayList<pet_tipVO> arr2 = (ArrayList<pet_tipVO>)session.getAttribute("Ser_arr");

			if (arr2 == null) {
				arr = dao.select();
			} else {
				arr = arr2;
			}

			int k = arr.size();

			for (int i = 0; i < arr.size(); i++) {
				out.print("<tr class='tbl_line'>");
				out.print("<td>" + (k--) + "</td>");
				out.print("<td><a href='tip_look.jsp?num=" + arr.get(i).getT_code() + "'>" + arr.get(i).getT_title() + "</a></td>");
				out.print("<td>" + arr.get(i).getT_id() + "</td>");
				out.print("<td>" + arr.get(i).getT_date() + "</td>");
				out.print("<td>" + arr.get(i).getT_hit() + "</td>");
				/* out.print("<td><a href ='DeleteService.do?num=" + arr.get(i).getEmail()+ "'> 삭제  </a></td>"); */
				//QueryString : 전송하는 방식이 get방식일때 URL을 통해서 값을 보내는 방식
				out.print("</tr>");
				//out.print(email + "\t" + tel + "\t" + address + "<br>");
			}
			%>

			<%
				memberVO vo = (memberVO)session.getAttribute("vo");

			if (vo != null) {
			%>
			<tr>
				<td align="right" colspan="5"><button class="btn_wr"
						type="button" onclick="location.href='tip_write.jsp'">글쓰기</button></td>
			</tr>
			<%
				}
			%>
			
			
		</table>
	</div>


</body>
</html>