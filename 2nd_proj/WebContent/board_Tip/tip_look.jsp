
<%@page import="com.VO.memberVO"%>
<%@page import="com.VO.pet_tipVO"%>
<%@page import="com.DAO.pet_tipDAO"%>
<%@page import="com.VO.pet_qaVO"%>
<%@page import="com.DAO.pet_qaDAO"%>
<%@page import="java.util.ArrayList"%>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

<style>
#tbl {
	margin: auto;
	border: 1px solid gray;
	border-collapse: collapse;
	border-spacing: 0;
	text-align: center;
}

td {
	border: 1px solid gray;
}

.row1 {
	background-color: whitesmoke;
}

#conts {
	text-align: left;
}

.list, .del, .rew {
	float : right;
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
</style>
</head>

<body>

	<%
	
	//String cnt1 = request.getParameter("cnt");
	String num = request.getParameter("num");
	
	//int cnt = Integer.parseInt(cnt1);
	
	pet_tipDAO dao = new pet_tipDAO();

	pet_tipVO t_vo = dao.selectOne(num);
	
	int cnt = t_vo.getT_hit();
	
	dao.updateCnt(++cnt, t_vo.getT_code());
	//cnt++;
	%>

	<table id="tbl">

		<tr class="row1">
			<td colspan="4"><%=t_vo.getT_title()%></td>
		</tr>
		<tr class="row1">
			<td>글번호</td>
			<td id="pg_num"><%=t_vo.getT_code()%></td>
			<td>등록일</td>
			<td id="pg_date"><%=t_vo.getT_date()%></td>
		</tr>
		<tr class="row1">
			<td>작성자</td>
			<td id="writer"><%=t_vo.getT_id()%></td>

			<td>조회수</td>
			<td id="viewer"><%=t_vo.getT_hit() %></td>
		</tr>
		<tr>
			<td id="conts" colspan="4" width="500px" height="500px"><%=t_vo.getT_content()%></td>

		</tr>
		
		<%
		
		memberVO vo = (memberVO)session.getAttribute("vo");
		
		
		%>
		<tr>
			
				<td align="right" colspan="4">
				
				<% if(vo != null) { %>
				<form class="rew" action='tip_Rewrite.jsp'>
					<input type="hidden" name="code2" value="<%=t_vo.getT_code() %>">
					<input type=submit class="btn_wr" name="Rew" value="수정">
				
				</form>
				
				<form class="del" action="../pet_tipDelete" method="post">
					<input type="hidden" name="code" value="<%=t_vo.getT_code() %>">
					<input type="submit" class="btn_wr" value="삭제"> 
				</form>
				<%} %>
				<a href="tip_board.jsp"><input type="button" class="btn_wr" value="목록"></a>
				
				</td>
		</tr>
	

	</table>







</body>
</html>