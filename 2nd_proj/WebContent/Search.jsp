<%@page import="com.VO.memberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">

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
</style>
<body class="Contact">


	<header id="ttr_header">
		<div id="ttr_header_inner">
			<div class="headerforeground01"></div>
			<div class="ttr_headershape01">
				<div class="html_content">
					<p style="width: 350px">



					
						<a href="SignUp1.jsp" class="ttr_menu_items_parent_link"><span
							 style="font-family: 'Arial'; font-weight: 700; color: white; font-size: 13px; margin-right : 15px;" class="menuchildicon">회원가입
							 </span></a>
							  <a href="Login.jsp"><span
							style="font-family: 'Arial'; font-weight: 700; color:white;  font-size: 13px;" class="menuchildicon">로그인</span>
							</a>
						





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

						<li class="ttr_menu_items_parent dropdown"><a
							href="Community1.jsp" class="ttr_menu_items_parent_link"><span
								class="menuchildicon"></span>커뮤니티</a>
							<hr class="horiz_separator" /></li>
						<li class="ttr_menu_items_parent dropdown"><a
							href="#" class="ttr_menu_items_parent_link"><span
								class="menuchildicon"></span>견종 검색</a>
							<hr class="horiz_separator" /></li>

					</ul>
				</div>
			</div>
		</div>
	</nav>
	<div id="ttr_page" class="container" style="margin-right: 500px">
		<div id="ttr_content_and_sidebar_container">
			<div id="ttr_content">
				<div id="ttr_content_margin" class="container-fluid">
					<div
						style="height: 0px; width: 0px; overflow: hidden; -webkit-margin-top-collapse: separate;"></div>
					<div class="ttr_Contact_html_row0 row">
						<div class="post_column col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="ttr_Contact_html_column00">
								<div
									style="height: 0px; width: 0px; overflow: hidden; -webkit-margin-top-collapse: separate;"></div>
								<div class="html_content">
									<p style="margin-left: 580px">
										<span
											style="font-family: 'Arial'; font-weight: 700; font-size: 2em; color: rgba(5, 38, 55, 1);">설문
											페이지</span>
									</p>
								</div>
								<div
									style="height: 0px; width: 0px; overflow: hidden; -webkit-margin-top-collapse: separate;"></div>
								<div style="clear: both;"></div>
							</div>
						</div>
						<div
							class="clearfix visible-lg-block visible-sm-block visib
							le-md-block visible-xs-block">
						</div>
					</div>
					<div class="ttr_Contact_html_row1 row" style="width: 100%">

						<div class="clearfix visible-xs-block"></div>
						<div class="post_column col-lg-6 col-md-6 col-sm-6 col-xs-12"
							style="width: 100%">
							<div class="ttr_Contact_html_column11">
								<div
									style="height: 0px; width: 0px; overflow: hidden; -webkit-margin-top-collapse: separate;"></div>
								<div class="html_content">
									<p style="text-align: Center;">
									<form id="ContactForm0" class="form-horizontal" role="form"
										method="post" action=""
										style="padding: 0px 0px 0px 0px; margin: 0 auto;">
										<div class="form-group">

											<tr>
												<td colspan="5" style="height : 30px">당신은 외국인인가요?</td>
											</tr>
											<!-- <label class="col-sm-4 control-label">당신의 집은 어떻습니까?</label> -->

											<table>
												<!-- 	<tr>
													<td colspan="3">앙아아</td>
												</tr> -->


												<tr>

													<td align="center"><input type="radio" class="foreign"
														name="foreign" value="y" /></td>
													<td align="center"><input type="radio" class="foreign"
														name="foreign" value="n" /></td>


												</tr>
												<tr>

													<td align="center" style="width: 166px;">외국인</td>
													<td align="center" style="width: 426px;">내국인</td>

												</tr>

											</table>

										</div>

										<div class="form-group">
											<table>


												<table>
													<tr>
														<td colspan="5" style="height : 40px">“당신은 알러지가 있나요?<bn> 알러지가 있다면 약을
															복용할 경우 증상을 완하시킬수 있나요?<bn>장기적으로 복용하며 지내는 것에 대해 충분히
															고려해 보셨나요?(ex재채기, 기침,콧물,눈 가려움 피부발진 등)</td>
													</tr>


													<tr>

														<td align="center"><input type="radio"
															class="allergic" name="allergic" value="y" /></td>
														<td align="center"><input type="radio"
															class="allergic" name="allergic" value="n" /></td>

													</tr>
													<tr>

														<td align="center">예.</td>
														<td align="center">아니요.</td>

													</tr>

												</table>

												</div>
												<div class="form-group">
													<!-- <label class="col-sm-4 control-label"> 반려견의 털 손질은 몇 번이 적당하다고 생각하십니까?</label> -->

													<table>
														<tr>
															<td colspan="5" style="height : 30px">강아지가 홀로 8시간 이상 있어야 하나요?</td>
														</tr>


														<tr>

															<td align="center"><input type="radio" class="wait"
																name="wait" value="y" /></td>
															<td align="center"><input type="radio" class="wait"
																name="wait" value="n" /></td>
														</tr>
														<tr>

															<td align="center">예.</td>
															<td align="center">아니요.</td>
														</tr>

													</table>
												</div>
												<div class="form-group">
													<!-- <label class="col-sm-4 control-label"> 미래의 반려견의 털갈이에 대하여, 최대 얼마만큼까지 수용 가능합니까?</label> -->


													<table>
														<tr>
															<td colspan="5" style="height : 30px">자녀가 없나요? 있다면 3세 이상인가요?</td>
														</tr>

														<tr>

															<td align="center"><input type="radio" class="baby"
																name="baby" value="n" /></td>
															<td align="center"><input type="radio" class="baby"
																name="baby" value="y" /></td>
														</tr>
														<tr>

															<td align="center">예.</td>
															<td align="center">아니요.</td>
														</tr>

													</table>

												</div>
												<div class="form-group">
													<!-- <label class="col-sm-4 control-label">털 손질/목욕</label> -->



													<table>
														<tr>
															<td colspan="5" style="height : 30px">키울곳이 사람의 이용이 많거나, 영업시설이거나, 복지시설인가요?</td>
														</tr>

														<tr>

															<td align="center"><input type="radio"
																class="people" name="people" value="y" /></td>
															<td align="center"><input type="radio"
																class="people" name="people" value="n" /></td>
														</tr>
														<tr>

															<td align="center">예.</td>
															<td align="center">아니요.</td>
														</tr>

													</table>

												</div>
												<div class="form-group">
													<!-- <label class="col-sm-4 control-label">털 손질/목욕</label> -->



													<table>
														<tr>
															<td colspan="5" style="height : 30px">반려동물을 키우면서 가족과의 합의가 되어있나요?</td>
														</tr>


														<tr>

															<td align="center"><input type="radio" class="agree"
																name="agree" value="n" /></td>
															<td align="center"><input type="radio" class="agree"
																name="agree" value="y" /></td>
														</tr>
														<tr>

															<td align="center">예.</td>
															<td align="center">아니요.</td>
														</tr>

													</table>

												</div>
												<div class="form-group">
													<!-- <label class="col-sm-4 control-label">털 손질/목욕</label> -->



													<table>
														<tr>
															<td colspan="5" style="height : 30px">본인 혹은 가족 중 우울증 등 정신질환이 있나요?</td>
														</tr>


														<tr>

															<td align="center"><input type="radio" class="fruit"
																name="fruit" value="y" /></td>
															<td align="center"><input type="radio" class="fruit"
																name="fruit" value="n" /></td>
														</tr>
														<tr>

															<td align="center">예.</td>
															<td align="center">아니요.</td>
														</tr>

													</table>

												</div>
												<div class="form-group">

													<tr>
														<td colspan="5 style="height : 30px"">파양 경험이 2번 이상인가요?</td>
													</tr>
													<!-- <label class="col-sm-4 control-label">당신의 집은 어떻습니까?</label> -->

													<table>
														<!-- 	<tr>
													<td colspan="3">앙아아</td>
												</tr> -->


														<tr>

															<td align="center"><input type="radio"
																class="payang" name="payang" value="y" /></td>
															<td align="center"><input type="radio"
																class="payang" name="payang" value="n" /></td>


														</tr>
														<tr>

															<td align="center">예.</td>
															<td align="center">아니요.</td>

														</tr>

													</table>

												</div>
												<div class="form-group">

													<tr>
														<td colspan="5" style="height : 30px">실평수 10평 이하에 거주 중인가요?</td>
													</tr>

													<table>



														<tr>

															<td align="center"><input type="radio" class="home"
																name="home" value="y" /></td>
															<td align="center"><input type="radio" class="home"
																name="home" value="n" /></td>

														</tr>
														<tr>

															<td align="center">예.</td>
															<td align="center">아니요.</td>
														</tr>

													</table>

												</div>
												<div class="form-group" style="width :500px">

													<tr>
														<td colspan="5" style="height : 30px">고정적으로 반려견을 위해 지출할 수 있는 여건이 되나요?</td>
													</tr>
													<!-- <label class="col-sm-4 control-label">당신의 집은 어떻습니까?</label> -->

													<table>
														<!-- 	<tr>
													<td colspan="3">앙아아</td>
												</tr> -->

														<tr>

															<td align="center"><input type="radio" class="money"
																name="money" value="n" /></td>
															<td align="center"><input type="radio" class="money"
																name="money" value="y" /></td>



														</tr>
														<tr>

															<td align="center">예.</td>
															<td align="center">아니요.</td>

														</tr>

													</table>

												</div>


												<script type="text/javascript"
													src="http://code.jquery.com/jquery-latest.min.js">
													
												</script>
												<style>
#click_btn {
	margin: 0 auto;
	padding: 10px;
	background-color: #037FBB;
	width: 180px;
	cursor: pointer;
	text-align: center;
	font-weight: bold;
	font-size: 14px;
	color: #fff;
}
</style>

												<div id="click_btn"
													style="margin-left: 140px; margin-top: 80px;">회원가입</div>

												<%
													String id = request.getParameter("id");
												%>




												<script>
													$('#click_btn')
															.click(
																	function() {

																		var check1 = $(
																				".foreign:checked")
																				.val();
																		var check2 = $(
																				".allergic:checked")
																				.val();
																		var check3 = $(
																				".wait:checked")
																				.val();
																		var check4 = $(
																				".baby:checked")
																				.val();
																		var check5 = $(
																				".people:checked")
																				.val();
																		var check6 = $(
																				".agree:checked")
																				.val();
																		var check7 = $(
																				".fruit:checked")
																				.val();
																		var check8 = $(
																				".payang:checked")
																				.val();
																		var check9 = $(
																				".home:checked")
																				.val();
																		var check10 = $(
																				".money:checked")
																				.val();

																		if (check1 == "n"
																				&& check2 == "n"
																				&& check3 == "n"
																				&& check4 == "n"
																				&& check5 == "n"
																				&& check6 == "n"
																				&& check7 == "n"
																				&& check8 == "n"
																				&& check9 == "n"
																				&& check10 == "n") {
																			alert("회원가입 성공");

																			location.href = "joinService"
																		} else {
																			alert("회원가입 실패")
																			location.href = "home.jsp"
																		}

																		/* alert(ch); */

																		//if(ch==false){
																		//	alert("회원가입 성공");
																		//	 location.href  ="home.jsp"
																		//}else{
																		//	alert("회원가입 실패");
																		//	location.href  ="home.jsp"
																		//}

																	});
												</script>



												<!-- <body onload ="add()"> </body>
												 -->






												<!-- <script>
													var result = confirm("회원가입 성공!!");

													if (result) {
														document
																.write("<h1> 실행합니다. </h1>")
													} else {
														document
																.write("<h1> 실행하지 않습니다. </h1>")
													}
												</script> -->



												<div class="clearfix"></div>
												<div class="success"></div>
												<div class="req_field"></div>
												<div class="clearfix"></div>
												</form>
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
