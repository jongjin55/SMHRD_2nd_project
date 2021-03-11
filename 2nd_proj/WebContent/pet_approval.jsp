<%@page import="com.VO.pet_submitVO"%>
<%@page import="com.VO.pet_boardVO"%>
<%@page import="com.DAO.pet_boardDAO"%>


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
	vertical-align: middle;
	border-bottom: 1px solid #ccc;
	background: #eee;
}

.button {
	width: 140px;
	height: 45px;
	font-family: 'Roboto', sans-serif;
	font-size: 15px;
	text-transform: uppercase;
	letter-spacing: 2.5px;
	font-weight: 700;
	color: #000;
	background-color: #fff;
	border: none;
	border-radius: 10px;
	box-shadow: 0px 8px 15px rgba(0, 0, 0, 0.25);
	transition: all 0.3s ease 0s;
	cursor: pointer;
	outline: none;
	margin: 10px 10px 10px 10px;
}

.button:hover {
	background-color: #66aaff;
	box-shadow: 0px 15px 20px rgba(0, 0, 0, 0.25);
	color: #fff;
	transform: translateY(-7px);
}
a {
text-decoration : none;
}
</style>

</head>



<body>

	<%
		
	%>
	<table class="type11">
		<catpion align="center">
		<h2 style="font-size: 40px; font-weight: bold; margin: 90px">입양신청관리</h2>
		</catpion>

		<thead>
			<tr>
				<th scope="cols">번호</th>
				<th scope="cols">사진</th>
				<th scope="cols">견종</th>
				<th scope="cols">아이디</th>
				<th scope="cols">신청날짜</th>

			</tr>
		</thead>
		<tbody>


			<%
				pet_boardDAO dao = new pet_boardDAO();
			ArrayList<pet_submitVO> arr = dao.selectMsg();

			System.out.println("pet_boardDAO의 selectMsg--->" + arr.size());

			int k = arr.size();
			
			for (int i = 0; i < arr.size(); i++) {
				
				pet_boardVO vo = dao.selectOne(arr.get(i).getS_num());

				out.print("<tr class='tr'>");
				out.print("<td>" + (k--) + "</td>");
				out.print("<td><img width='150px' height='150px' src='/project_2/Upload/" + vo.getB_image() + "'></td>");
				out.print("<td>" + vo.getB_spicies() + "</td>");
				out.print("<td>" + arr.get(i).getS_id() + "</td>");
				out.print("<td>" + arr.get(i).getS_date() + "</td>");
				out.print(
				"<td border-bottom: 0; style='background-color: white; border-bottom : 0' ><input type='button' style='background-color: #B3E7F2; height:50px; width: 90px;' class='button' id='yes' onclick='btn_hide()' value='승인'>"
						+ "<a href='petFalse?num=" + arr.get(i).getS_code()
						+ "'><button id='no' class='button' style='background-color: #B3E7F2; height:50px; width: 90px;'>거부</button></a></td>");
				out.print("</tr>");
			}
			%>

		<!-- 	<script type="text/javascript">
				function btn_hide() {

					var elem = document.getElementById("yes");
					document.getElementById("no").style.display = "none";
					elem.value = "승인 완료";
					elem.disabled = "true";

				}
			</script> -->

			<script type="text/javascript">
				function btn_hide() {
					var elem = document.getElementById("yes");
					document.getElementById("no").style.display = "none";
					elem.innerText = "승인 완료";
					elem.disabled = "true";

					const btnElem = document
							.querySelector(".button");
					btnElem.style.backgroundColor = "pink";
					btnElem.style.color = "black";
					btnElem.style.transform = "translateY(0px)";
					btnElem.style.boxShadow = "0px 0px 0px rgba(0,0,0,0.1)";
					btnElem.style.cursor = "auto";
				}
			</script>

			<tr>
				<td colspan="9" align="center"
					style="background-color: white; border-bottom: 0;"><a
					href="pet_Services.jsp"><button class="button"
							style="width: 100px; padding: 10px; vertical-align: middle; background: white border: 1px solid gray">
							뒤로가기</button></a></td>
			</tr>
		</tbody>
	</table>
</body>
</html>