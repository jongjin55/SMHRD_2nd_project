
<%@page import="com.VO.memberVO"%>
<%@page import="com.VO.pet_boardVO"%>
<%@page import="com.DAO.pet_boardDAO"%>
<%@page import="com.VO.pet_qaVO"%>

<%@page import="java.util.ArrayList"%>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<script type="text/javascript" src="jquery.js">
	
</script>
<script type="text/javascript" src="jquery-ui.min.js">
	
</script>
<script type="text/javascript" src="bootstrap.min.js">
	
</script>
<script type="text/javascript" src="Customjs.js">
	
</script>
<script type="text/javascript" src="contactform.js">
	
</script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>유기견 등록하기</title>
<link rel="stylesheet" href="bootstrap.css" type="text/css"
	media="screen" />
<link rel="stylesheet" href="style.css" type="text/css" media="screen" />
<!--[if lte IE 8]>
<link rel="stylesheet"  href="menuie.css" type="text/css" media="screen"/>
<link rel="stylesheet"  href="vmenuie.css" type="text/css" media="screen"/>
<![endif]-->
<script type="text/javascript" src="totop.js">
	
</script>
<!--[if IE 7]>
<style type="text/css" media="screen">
#ttr_vmenu_items  li.ttr_vmenu_items_parent {margin-left:-16px;font-size:0px;}
</style>
<![endif]-->
<!--[if lt IE 9]>
<script type="text/javascript" src="html5shiv.js">
</script>
<script type="text/javascript" src="respond.min.js">
</script>
<![endif]-->

<style>

a {
	text-decoration : none;
	outline: none;
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
  margin:10px 10px 10px 10px ;
  
  }
  

.button:hover {
  background-color: #66aaff;
  box-shadow: 0px 15px 20px rgba(0,0,0,0.25) ;
  color: #fff;
  transform: translateY(-7px);
}
</style>

</head>
<body class="Services">
	<div class="totopshow">
		<a href="#" class="back-to-top"><img alt="Back to Top"
			src="images/gototop0.png" /></a>
	</div>
	<header id="ttr_header">
		<div id="ttr_header_inner">
			<div class="headerforeground01"></div>
			<div class="ttr_headershape01">
				<div class="html_content">
					<p style="width: 350px">
						<%
							memberVO vo = (memberVO) session.getAttribute("vo");

						if (vo == null) {//id가 null값이었을때
						%>
						<a href="SignUp1.jsp" class="ttr_menu_items_parent_link"><span
							style="font-family: 'Arial'; font-weight: 700; color: white; font-size: 13px; margin-right: 15px;"
							class="menuchildicon">회원가입 </span></a> <a href="Login.jsp"><span
							style="font-family: 'Arial'; font-weight: 700; color: white; font-size: 13px;"
							class="menuchildicon">로그인</span> </a>
						<%
							} else if (vo.getM_id().equals("admin")) {
						%>
						<a href="memController.jsp"><span
							style="font-family: 'Arial'; font-weight: 700; color: white; font-size: 13px; margin-right: 15px;"
							class="menuchildicon">회원관리페이지</span> </a> <a href="update.jsp"><span
							style="font-family: 'Arial'; font-weight: 700; color: white; font-size: 13px; margin-right: 15px;"
							class="menuchildicon">개인정보수정</span> </a> <a href="LogoutService"><span
							style="font-family: 'Arial'; font-weight: 700; color: white; font-size: 13px;"
							class="menuchildicon">로그아웃</span> </a>
						<!-- 스크립틀릿 이용해서 처리 -->
						<%
							} else {
						%>
						<a href="update.jsp"><span
							style="font-family: 'Arial'; font-weight: 700; color: white; font-size: 13px;"
							class="menuchildicon">개인정보수정</span> </a> <a href="LogoutService"><span
							style="font-family: 'Arial'; font-weight: 700; color: white; font-size: 13px;"
							class="menuchildicon">로그아웃</span> </a>
						<%
							}
						%>




					</p>
				</div>
			</div>
			<div class="ttr_headershape02">
				<div class="html_content"></div>
			</div>
		</div>
	</header>
	<nav id="ttr_menu" class="navbar-default navbar">
		<div id="ttr_menu_inner_in">
			<div class="menuforeground"></div>
			<div class="ttr_menushape1">
				<div class="html_content">
					<p style="width : 300px; margin-left : 10px">
					<span
						style="font-family: 'Arial'; font-weight: 700; font-size: 2.571em; color: rgba(78, 78, 78, 1);">TOGETDOG</span>
				</p>
				</div>
			</div>
			<div id="navigationmenu">
				<div class="navbar-header">
					<button id="nav-expander" data-target=".navbar-collapse"
						data-toggle="collapse" class="navbar-toggle" type="button">
						<span class="sr-only"> </span> <span class="icon-bar"> </span> <span
							class="icon-bar"> </span> <span class="icon-bar"> </span>
					</button>
					<a href="home.jsp"><img class="ttr_menu_logo" src="image/logo.png"></a>
				</div>
				<div class="menu-center collapse navbar-collapse">
					<ul class="ttr_menu_items nav navbar-nav navbar-right">
						<li class="ttr_menu_items_parent dropdown"><a href="home.jsp"
							class="ttr_menu_items_parent_link"><span
								class="menuchildicon"></span>Home</a>
							<hr class="horiz_separator" /></li>
						<li class="ttr_menu_items_parent dropdown"><a
							href="about.jsp" class="ttr_menu_items_parent_link"><span
								class="menuchildicon"></span>입양절차</a>
							<hr class="horiz_separator" /></li>


						<%
							if (vo != null) {
							if (vo.getM_id().equals("admin")) {
						%>
						<li class="ttr_menu_items_parent dropdown"><a
							href="pet_Services.jsp" class="ttr_menu_items_parent_link"><span
								class="menuchildicon"></span>유기견 등록하기</a>
							<hr class="horiz_separator" /></li>
						<%
							}
						}
						%>


						<li class="ttr_menu_items_parent dropdown"><a
							href="Community1.jsp" class="ttr_menu_items_parent_link"><span
								class="menuchildicon"></span>커뮤니티</a>
							<hr class="horiz_separator" /></li>
						<li class="ttr_menu_items_parent dropdown"><a
							href="contact.html" class="ttr_menu_items_parent_link"><span
								class="menuchildicon"></span>견종 검색</a>
							<hr class="horiz_separator" /></li>
					</ul>
				</div>
			</div>
		</div>
	</nav>
	<div id="ttr_page" class="container">
		<div id="ttr_content_and_sidebar_container">
			<div id="ttr_content">
				<div id="ttr_content_margin" class="container-fluid">
					<div
						style="height: 0px; width: 0px; overflow: hidden; -webkit-margin-top-collapse: separate;"></div>
					<div class="ttr_Services_html_row0 row">
						<div class="post_column col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="ttr_Services_html_column00">
								<div
									style="height: 0px; width: 0px; overflow: hidden; -webkit-margin-top-collapse: separate;"></div>
								<div class="html_content">
									<p style="text-align: Center;">
										<img src="image/abc.png" width="900px" height="180px" style="margin-top : -70px">

									</p>
								</div>
								<div
									style="height: 0px; width: 100px; overflow: hidden; -webkit-margin-top-collapse: separate;"></div>
								<div style="clear: both;"></div>
							</div>
						</div>
						<div
							class="clearfix visible-lg-block visible-sm-block visible-md-block visible-xs-block">
						</div>
					</div>
					<%
						pet_boardDAO dao = new pet_boardDAO();
					ArrayList<pet_boardVO> arr = dao.selectAll();
					%>

					<div class="post_column col-lg-12 col-md-12 col-sm-12 col-xs-12">

						<div style="text-align: right; width: 970px;">
							<a href="pet_write.html"><button class="button">
								유기견 등록
							</button></a>
							<a href="pet_approval.jsp"><button class="button" style="margin: auto;">
								승인 목록
							</button></a>
							<br> <br>
						</div>
						<%
							for (int i = 0; i < arr.size(); i++) {
						%>
						<form action="#">
							<table width="900px"
								style="border: 1px solid gray; text-align: center; border-collapse: collapse; border-spacing: 0; margin: auto; border-color : white !important;">


								<tr>
									<td rowspan="5" style="width: 100px" bgcolor="whitesmoke">
										<img width="200px" height="200px"
										src="${pageContext.request.contextPath}/Upload/<%=arr.get(i).getB_image() %>">
									</td>
									<td colspan="4" bgcolor="whitesmoke" style="border-bottom:1px solid gray"><%=arr.get(i).getB_title()%></td>
									<td rowspan="5" bgcolor="whitesmoke" style="border : 0; background-color : white">
										<button class="button" width=100%
											style="height : 70px; padding-left: 25px; padding-right: 25px; padding-top: 5px; padding-bottom: 5px; box-sizing: border-box; margin-bottom: 30px; background-color: pink;">
											<a href="pet_detail.jsp?num=<%=arr.get(i).getB_code()%>">수정</a>
										</button><br>
										<button class="button" width=100%
											style="height : 70px; padding-left: 25px; padding-right: 25px; padding-top: 5px; padding-bottom: 5px; box-sizing: border-box; margin-top: 5px; background-color: pink">
											<a href="petDeleteService?num=<%=arr.get(i).getB_code()%>">삭제</a>
										</button>
									</td>

								</tr>
								<tr>
									<td bgcolor="whitesmoke" style="border-bottom:1px solid gray; border-right : 1px solid gray">펫 이름  :  <%=arr.get(i).getB_name()%></td>
									<td bgcolor="whitesmoke" style="border-bottom:1px solid gray; border-right : 1px solid gray">나이  :  <%=arr.get(i).getB_age()%> 살</td>
									<td bgcolor="whitesmoke" style="border-bottom:1px solid gray; border-right : 1px solid gray">작성자  :  <%=arr.get(i).getB_id()%></td>
									<td bgcolor="whitesmoke" style="border-bottom:1px solid gray;">작성 날짜  :  <%=arr.get(i).getB_date()%></td>
								</tr>
								<tr bgcolor="whitesmoke">
									<td colspan="2" style="border-bottom:1px solid gray">성별 : <%=arr.get(i).getB_gender()%></td>
									<td colspan="2" style="border-bottom:1px solid gray">견종 : <%=arr.get(i).getB_spicies()%></td>
								</tr>

								<tr>
									<td colspan="4" bgcolor="whitesmoke"><%=arr.get(i).getB_content()%></td>
								</tr>

							</table>
						</form>
						<br>
						<br>
						<%
							}
						%>

						<br>
						<br>


					</div>
















					<div class="ttr_Services_html_row4 row">
						<div class="post_column col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="ttr_Services_html_column40">
								<div
									style="height: 0px; width: 0px; overflow: hidden; -webkit-margin-top-collapse: separate;"></div>
								<div class="html_content">
									<p style="text-align: Center;">
										<span><a HREF="#" target="_self"
											class="btn btn-lg btn-primary">MORE INFO</a></span>
									</p>
								</div>
								<div
									style="height: 0px; width: 0px; overflow: hidden; -webkit-margin-top-collapse: separate;"></div>
								<div style="clear: both;"></div>
							</div>
						</div>
						<div
							class="clearfix visible-lg-block visible-sm-block visible-md-block visible-xs-block">
						</div>
					</div>
					<div
						style="height: 0px; width: 0px; overflow: hidden; -webkit-margin-top-collapse: separate;"></div>
				</div>
			</div>
			<div style="clear: both"></div>
		</div>
	</div>
	<div style="height: 0px; width: 0px; overflow: hidden;"></div>
	<footer id="ttr_footer">
		<div class="ttr_footerContact_html_row0 row">
			<div class="post_column col-lg-3 col-md-6 col-sm-6 col-xs-12">
				<div class="ttr_footerContact_html_column00">
				
					<div
						style="height: 0px; width: 0px; overflow: hidden; -webkit-margin-top-collapse: separate;"></div>
				</div>
			</div>

		</div>
		<div class="ttr_footer_bottom_footer">
			<div class="ttr_footer_bottom_footer_inner">
				<div id="ttr_footer_designed_by_links">
				<span
						id="ttr_footer_designed_by" style="font-size : 15px"> Designed by 류보윤 정철화 성주환 문종진 이명서
					</span>
				</div>
			</div>
		</div>
	</footer>
	<div
		style="height: 0px; width: 0px; overflow: hidden; -webkit-margin-bottom-collapse: separate;"></div>
	<script type="text/javascript">
		WebFontConfig = {
			google : {
				families : [ 'Open+Sans', 'Open+Sans:700' ]
			}
		};
		(function() {
			var wf = document.createElement('script');
			wf.src = ('https:' == document.location.protocol ? 'https' : 'http')
					+ '://ajax.googleapis.com/ajax/libs/webfont/1.0.31/webfont.js';
			wf.type = 'text/javascript';
			wf.async = 'true';
			var s = document.getElementsByTagName('script')[0];
			s.parentNode.insertBefore(wf, s);
		})();
	</script>
</body>
</html>
