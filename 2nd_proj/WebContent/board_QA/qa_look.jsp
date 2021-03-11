
<%@page import="com.VO.memberVO"%>
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
	
	pet_qaDAO dao = new pet_qaDAO();

	pet_qaVO q_vo = dao.selectOne(num);
	
	int cnt = q_vo.getQ_hit();
	
	dao.updateCnt(++cnt, q_vo.getQ_code());
	//cnt++;
	%>

	<table id="tbl">

		<tr class="row1">
			<td colspan="4"><%=q_vo.getQ_title()%></td>
		</tr>
		<tr class="row1">
			<td>�۹�ȣ</td>
			<td id="pg_num"><%=q_vo.getQ_code()%></td>
			<td>�����</td>
			<td id="pg_date"><%=q_vo.getQ_date()%></td>
		</tr>
		<tr class="row1">
			<td>�ۼ���</td>
			<td id="writer"><%=q_vo.getQ_id()%></td>

			<td>��ȸ��</td>
			<td id="viewer"><%=q_vo.getQ_hit() %></td>
		</tr>
		<tr>
			<td id="conts" colspan="4" width="500px" height="500px"><%=q_vo.getQ_content()%></td>

		</tr>
		
		<%
		memberVO vo = (memberVO) session.getAttribute("vo");

		%>
		<tr>
		
		
				<td align="right" colspan="4">
					<% if (vo != null) {%>
				<form class="rew" action='qa_Rewrite.jsp'>
					<input type="hidden" name="code2" value="<%=q_vo.getQ_code() %>">
					<input type=submit class="btn_wr" name="Rew" value="����">
				
				</form>
				
				<form class="del" action="../pet_qaDelete" method="post">
					<input type="hidden" name="code" value="<%=q_vo.getQ_code() %>">
					<input type="submit" class="btn_wr" value="����"> 
				</form>
				<%} %>
				<a href="qa_board.jsp"><input type="button" class="btn_wr" value="���"></a>
				
				</td>
		</tr>
		

	</table>







</body>
</html>