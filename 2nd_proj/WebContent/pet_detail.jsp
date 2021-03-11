<%@page import="com.VO.pet_boardVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.DAO.pet_boardDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
	<%
		String num1 = request.getParameter("num");
	int num = Integer.parseInt(num1);

	pet_boardDAO dao = new pet_boardDAO();
	pet_boardVO vo = dao.selectOne(num);
	%>
	<form action="uploadFileService" method="post"
		enctype="multipart/form-data">
		
		
		<table style="margin: auto; width: 1000px; border: 1px solid gray;">


			<tr height="30px">
				<td class="name" align="center" bgcolor="gray">����</td>
				<td colspan="5" bgcolor="#ECF0F1"><input type="text" id="name"
					size="120" name="p_title" value="<%=vo.getB_title()%>"></td>
			</tr>
			<tr height="30px">
				<td class="name" align="center" bgcolor="gray">�� �̸�</td>
				<td bgcolor="#ECF0F1"><input type="text" name="p_name"
					value="<%=vo.getB_name()%>"></td>
				<td class="name" align="center" bgcolor="gray">�� ����</td>
				<td bgcolor="#ECF0F1"><input type="text" id="p_age"
					name="p_age" value="<%=vo.getB_age()%>"></td>
				<td class="name" align="center" bgcolor="gray">�� ����</td>
				<td bgcolor="#ECF0F1"><input type="text" name="p_spicies"
					value="<%=vo.getB_spicies()%>"></td>
			</tr>
			<tr>
				<td class="name" align="center" height="100px" bgcolor="gray">��
					�ļ�</td>
				<%
					if (vo.getB_food() == 1) {
				%>
				<td colspan="2" bgcolor="#ECF0F1">�ǽ�<input type="radio"
					name="p_food" id="p_meal" value="1" checked="checked"> ���� <input
					type="radio" id="p_meal" name="p_food" value="2"></td>

				<%
					} else {
				%>
				<td colspan="2" bgcolor="#ECF0F1">�ǽ�<input type="radio"
					name="p_food" id="p_meal" value="1"> ���� <input type="radio"
					id="p_meal" name="p_food" value="2" checked="checked">
				</td>

				<%
					}
				%>


				<td rowspan="3" colspan="3" align="center" bgcolor="#ECF0F1"><img
					id="preview" src="#" alt="image" width="400px" height="300px" /></td>
			</tr>



			<tr>
				<td class="name" align="center" height="100px" bgcolor="gray">����</td>

				<%
					if (vo.getB_gender().equals("����")) {
				%>
				<td colspan="2" bgcolor="#ECF0F1">����<input type="radio"
					id="p_check" value="����" name="p_gender" checked="checked">
					����<input type="radio" id="p_check" value="����" name="p_gender"></td>

				<%
					} else {
				%>
				<td colspan="2" bgcolor="#ECF0F1">����<input type="radio"
					id="p_check" value="����" name="p_gender"> ����<input
					type="radio" id="p_check" value="����" name="p_gender"
					checked="checked"></td>


				<%
					}
				%>

			</tr>
			<tr>
				<td align="center" accept=".gif, .jpg, .png" height="100px"
					bgcolor="gray">�̹��� ���ε�</td>
				<td colspan="2" bgcolor="#ECF0F1"><input type="file"
					name="filename" id="inp-img" value="<%=vo.getB_image()%>">
					<input type="button" value="����" class="btn-delete"
					onclick="clear2()"></td>
			</tr>
			<tr>
				<td class="name" align="center" style="font-size: 20px;"
					bgcolor="gray">����</td>
				<td colspan="5" bgcolor="#ECF0F1"><textarea cols="122"
						rows="20" style="resize: none" name="p_conts"><%=vo.getB_content()%></textarea></td>
			</tr>
			<tr>
				<td colspan="6" align="center" bgcolor="#ECF0F1">
				<input type="hidden" name="code" value="<%=vo.getB_code()%>">
				<input type="submit" value="���">
				<a href="pet_Services.jsp"><input type="button" value="���"></a></td>
			</tr>
		</table>

	</form>

	<script type="text/javascript">
		function readURL(input) {
			if (input.files && input.files[0]) {
				var reader = new FileReader();

				reader.onload = function(e) {
					$('#preview').attr('src', e.target.result);
				}

				reader.readAsDataURL(input.files[0]);
			}
		}
		$("#inp-img").change(function() {
			readURL(this);
		});

		function clear2() {
			$('#preview').attr("src", "none");

		}
	</script>

	<!-- -->
</body>
</html>