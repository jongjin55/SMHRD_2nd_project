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

<script type="text/javascript" src="totop.js">
	
</script>

</head>
<style>
#banner {
	width: 70px;
	height: 70px;
}
</style>
<style>
table {
	width: 600px;
}

#research>input[type="button"] {
	background: #28d;
	border-color: transparent;
	color: #fff;
	cursor: pointer;
}

#research>input[type="button"]:hover {
	background: #17c;
}

/* Buttons' focus effect */
#research>input[type="button"]:focus {
	border-color: #05a;
}
</style>
<body class="Contact">
	<%
		//String email = (String)session.getAttribute("email");
	//System.out.println(email);
	//String tel = (String)session.getAttribute("tel");
	//String address = (String)session.getAttribute("address");

	memberVO vo = (memberVO) session.getAttribute("vo");

	System.out.print(vo);
	%>


	
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
							style="font-family: 'Arial'; font-weight: 700; color: white; font-size: 13px; margin-right: 15px"
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
						<li class="ttr_menu_items_parent dropdown"><a href="#"
							class="ttr_menu_items_parent_link"><span
								class="menuchildicon"></span>견종 검색</a>
							<hr class="horiz_separator" /></li>

					</ul>
				</div>
			</div>
		</div>
	</nav>

	<div class="research" style="margin-left: 35%; text-align: left;">
		<div class="html_content">
			<p
				style="text-align: left; margin-left: 18%; margin-top: 60px; margin-bottom: 7%;">
				<span
					style="font-family: 'Arial'; font-weight: 700; font-size: 2em; color: rgba(5, 38, 55, 1);">설문
					페이지</span>
			</p>
		</div>

		<form class="form-horizontal" method="post"
			action="http://127.0.0.1:9000/predict" name="sub">

			<div class="form-group">
				<table>
					<tr>
						<td colspan="5" style="padding-bottom: 5%">당신의 집은 어떻습니까?</td>
					</tr>

					<tr>
						<td align="center"><img id="banner" img src="image/home1.png"></td>
						<td align="center"><img id="banner" img src="image/home2.png"></td>
						<td align="center"><img id="banner" img src="image/home3.png"></td>
						<td></td>
						<td></td>
					</tr>

					<tr>

						<td align="center"><input type="radio" name="home" value=1 /></td>
						<td align="center"><input type="radio" name="home" value=2 /></td>
						<td align="center"><input type="radio" name="home" value=4 /></td>
					</tr>
					<tr>
						<td align="center">아파트</td>
						<td align="center">작은 마당</td>
						<td align="center">큰 마당</td>
						<td></td>
						<td></td>
					</tr>
				</table>
			</div>

			<div class="form-group">
				<table>
					<tr>
						<td colspan="5" style="padding-bottom: 5%">당신은 산책의 강도와 빈도에
							있어서 최대 얼마나 활기찬 반려견을 감당할 수 있으십니까?</td>
					</tr>
					<tr>
						<td align="center"><img id="banner" img src="image/take1.png"></td>
						<td align="center"><img id="banner" img src="image/take2.png"></td>
						<td align="center"><img id="banner" img src="image/take3.png"></td>
						<td align="center"><img id="banner" img src="image/take4.png"></td>
						<td align="center"><img id="banner" img src="image/take5.png"></td>

					</tr>

					<tr>

						<td align="center"><input type="radio" name="energy" value=1 /></td>
						<td align="center"><input type="radio" name="energy" value=2 /></td>
						<td align="center"><input type="radio" name="energy" value=3 /></td>
						<td align="center"><input type="radio" name="energy" value=4 /></td>
						<td align="center"><input type="radio" name="energy" value=5 /></td>
					</tr>
					<tr>

						<td align="center">거의 없음</td>
						<td align="center">차분함</td>
						<td align="center">보통</td>
						<td align="center">활발</td>
						<td align="center">매우 활발</td>
					</tr>

				</table>

			</div>

			<div class="form-group">
				<table>
					<tr>
						<td colspan="5" style="padding-bottom: 5%">반려견의 털 손질은 몇 번이
							적당하다고 생각하십니까?</td>
					</tr>
					<tr>
						<td align="center"><img id="banner" img
							src="image/clean1.png"></td>
						<td align="center"><img id="banner" img
							src="image/clean2.png"></td>
						<td align="center"><img id="banner" img
							src="image/clean3.png"></td>
						<td align="center"><img id="banner" img
							src="image/clean4.png"></td>
						<td align="center"><img id="banner" img
							src="image/clean5.png"></td>
					</tr>
					<tr>
						<td align="center"><input type="radio" name="brushing"
							value=1 /></td>
						<td align="center"><input type="radio" name="brushing"
							value=2 /></td>
						<td align="center"><input type="radio" name="brushing"
							value=3 /></td>
						<td align="center"><input type="radio" name="brushing"
							value=4 /></td>
						<td align="center"><input type="radio" name="brushing"
							value=5 /></td>
					</tr>
					<tr>
						<td align="center">때때로 씻김</td>
						<td align="center">주 1회</td>
						<td align="center">주 2~3회</td>
						<td align="center">매일 1회</td>
						<td align="center">매일 2회이상</td>
					</tr>
				</table>
			</div>

			<div class="form-group">
				<table>
					<tr>
						<td colspan="5" style="padding-bottom: 5%">미래의 반려견의 털갈이에 대하여,
							최대 얼마만큼까지 수용 가능합니까?</td>
					</tr>
					<tr>
						<td align="center"><img id="banner" img src="image/hair5.png"></td>
						<td align="center"><img id="banner" img src="image/hair4.png"></td>
						<td align="center"><img id="banner" img src="image/hair2.png"></td>
						<td align="center"><img id="banner" img src="image/hair3.png"></td>
						<td align="center"><img id="banner" img src="image/hair1.png"></td>

					</tr>
					<tr>
						<td align="center"><input type="radio" name="hair" value=1
							checked="checked" /></td>
						<td align="center"><input type="radio" name="hair" value=2
							checked="checked" /></td>
						<td align="center"><input type="radio" name="hair" value=3
							checked="checked" /></td>
						<td align="center"><input type="radio" name="hair" value=4
							checked="checked" /></td>
						<td align="center"><input type="radio" name="hair" value=5
							checked="checked" /></td>
					</tr>
					<tr>
						<td align="center">거의 없음</td>
						<td align="center">간간히 빠짐</td>
						<td align="center">분기별 빠짐</td>
						<td align="center">평균</td>
						<td align="center">자주빠짐</td>
					</tr>
				</table>

			</div>

			<div class="form-group">
				<table>
					<tr>
						<td colspan="5" style="padding-bottom: 5%">당신이 반려견을 트레이닝 할 때
							최대한으로 다룰 수 있는 반려견의 성격은?</td>
					</tr>
					<tr>
						<td align="center"><img id="banner" img src="image/char1.png"></td>
						<td align="center"><img id="banner" img src="image/char2.png"></td>
						<td align="center"><img id="banner" img src="image/char3.png"></td>
						<td align="center"><img id="banner" img src="image/char4.png"></td>
						<td align="center"><img id="banner" img src="image/char5.png"></td>
					</tr>
					<tr>
						<td align="center"><input type="radio" name="char" value=1 /></td>
						<td align="center"><input type="radio" name="char" value=2 /></td>
						<td align="center"><input type="radio" name="char" value=3 /></td>
						<td align="center"><input type="radio" name="char" value=4 /></td>
						<td align="center"><input type="radio" name="char" value=5 /></td>
					</tr>
					<tr>
						<td align="center">경계 심함</td>
						<td align="center">주의 필요</td>
						<td align="center">보통</td>
						<td align="center">친화적</td>
						<td align="center">활발함</td>
					</tr>
				</table>
			</div>

			<input type="button" value="넘어가기" onclick="sub1()"
				style="margin-left: 65%; margin-bottom: 50%; width: 200px; background-color: #037FBB; border-collapse: collapse; height: 45px; margin-top: 20%; color: white; font-weight: bold; border: 0;" />
			<script type="text/javascript">
				function sub1() {
					document.sub.submit();
				}
			</script>
		</form>


	</div>


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
					<span id="ttr_footer_designed_by" style="font-size: 15px">
						Designed by 류보윤 정철화 성주환 문종진 이명서 </span>
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
