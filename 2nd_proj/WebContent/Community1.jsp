
<%@page import="com.VO.memberVO"%>
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
<title>contact</title>
<link rel="stylesheet" href="bootstrap.css" type="text/css"
	media="screen" />
<link rel="stylesheet" href="style.css" type="text/css" media="screen" />
<!--[if lte IE 8]>
<link rel="stylesheet"  href="menuie.css" type="text/css" media="screen"/>
<link rel="stylesheet"  href="vmenuie.css" type="text/css" media="screen"/>
<![endif]-->
<script type="text/javascript" src="totop.js">
	
</script>

</head>
<style>
#banner {
	width: 70px;
	height: 70px;
	margin: 0px auto;
	position: relative;
}

#document {
	margin: 0px auto;
	position: relative;
}

.btn.btn-md.btn-default {
	width: 200px;
	height: 40px;
	display: block;
}
</style>
<style>
table {
	width: 600px;
}
</style>
<%
	memberVO vo = (memberVO)session.getAttribute("vo");
%>

</div>
<header id="ttr_header">
	<div id="ttr_header_inner">
		<div class="headerforeground01"></div>
		<div class="ttr_headershape01">
			<div class="html_content">
				<p style="width: 350px">
					<%
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
						style="font-family: 'Arial'; font-weight: 700; color: white; font-size: 13px; margin-right : 15px"
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
						style="font-family: 'Arial'; font-weight: 700; font-size: 2.571em; color: rgba(78, 78, 78, 1);">TO GET DOG</span>
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
						class="ttr_menu_items_parent_link"><span class="menuchildicon"></span>Home</a>
						<hr class="horiz_separator" /></li>
					<li class="ttr_menu_items_parent dropdown"><a href="about.jsp"
						class="ttr_menu_items_parent_link"><span class="menuchildicon"></span>입양절차</a>
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

					<li class="ttr_menu_items_parent dropdown active"><a
						href="Community1.jsp" class="ttr_menu_items_parent_link_active"><span
							class="menuchildicon"></span>커뮤니티</a>
				
					<li class="ttr_menu_items_parent dropdown"><a
						href="#" class="ttr_menu_items_parent_link"><span
							class="menuchildicon"></span>견종 검색</a>
						<hr class="horiz_separator" /></li>
				</ul>

			</div>
		</div>

	</div>
	
	
	
	
	
	
	
	<ul style="margin-left: 50px; margin-top: 200px; text-align: center; width:200px">
		<a
			style="background-color: #B3E7F2; color: white; text-align: center; font-size: 17px;"
			href="board_QA/qa_board.jsp" class="btn btn-md btn-default"
			target="iframe_test"> Q&A </a>
		<a
			style="background-color: #B3E7F2; color: white; text-align: center; font-size: 17px;"
			href="board_Tip/tip_board.jsp" class="btn btn-md btn-default"
			target="iframe_test"> TIP </a>
	</ul>

</nav>



<div style="text-align: center">
	<!-- width:100%; -->
	<div id=main style="margin: 0 auto; display: inline-block;">

		<img src="image/aaaaa.png" width="900px" height="180px">

		<article>
			<iframe name=iframe_test src="board_QA/qa_board.jsp" frameborder="0"
				width="900px" height="1000px"margin: 0pxauto; position:relative;></iframe>






		</article>
	</div>


</div>

<!-- border:2px solid blue; -->


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
