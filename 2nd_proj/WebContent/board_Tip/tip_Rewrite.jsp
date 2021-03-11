
<%@page import="com.VO.pet_tipVO"%>
<%@page import="com.DAO.pet_tipDAO"%>
<%@page import="com.VO.pet_qaVO"%>
<%@page import="com.DAO.pet_qaDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<style>
#table_set {
	width: 800px;
	height: 10px;
	margin: auto;
	border: 1px solid gray;
	border-collapse: collapse;
	border-spacing: 0;
}

td {
	border: 1px solid gray;
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

.inp{
border : 0;
outline : none;
}

</style>
<body>
	<%
	String code = request.getParameter("code2");
	
	pet_tipDAO dao = new pet_tipDAO();
	pet_tipVO vo = dao.selectOne(code);

	%>


	<form action="../pet_tipRewrite" method="get"
		enctype="multipart/form-data">

		<table id="table_set">

			<caption>
				<h3>글작성</h3>
			</caption>
			<tr height="30px">
				<td class="name" align="center" bgcolor="whitesmoke">제목</td>
				<td><input type="text" class ="inp" name="title"
					style="display: block; width: 98%" value="<%=vo.getT_title() %>"></td>
			</tr>

			<tr>
				<td class="cont" align="center" style="font-size: 20px;"
					bgcolor="whitesmoke"><span>내용</span></td>
				<td><textarea rows="20"
						style="width: 99%; height: 95%; resize: none" class="inp"
						name="conts"><%=vo.getT_content() %></textarea></td>
			</tr>
			<tr>
				<td align="center" colspan="2">
				<input type="hidden" name="code" value="<%=vo.getT_code() %>">
				<input type="submit" class="btn_wr" value="등록">		
				
				<a href="tip_look.jsp?num=<%=code%>"><input class="btn_wr" type="button" value="취소"></a>
				</td>
			</tr>

		</table>

	</form>



</body>
</html>