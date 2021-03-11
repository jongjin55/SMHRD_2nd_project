


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
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js">
	
</script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js">
	
</script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>입양절차</title>

<style>
#banner {
	width: 1100px;
	height: 400px;
	margin: 0px auto;
}

#ban {
	width: 200px;
	height: 200px;
}

<
style>.modal-content {
	overflow-y: initial !important
}

.modal-body {
	height: 250px;
	overflow-y: auto;
}

.modal-dialog.modal-fullsize {
	width: 100%;
	height: 100%;
	margin: 0;
	padding: 0;
}

.modal-content.modal-fullsize {
	height: auto;
	min-height: 100%;
	border-radius: 0;
}

#abc {
	overflow: auto;
}

.modal {
	max-width: none;
	width: 600px;
}
</style>

</style>
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
</head>
<body class="About">
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
							 style="font-family: 'Arial'; font-weight: 700; color: white; font-size: 13px; margin-right : 15px;" class="menuchildicon">회원가입
							 </span></a>
							  <a href="Login.jsp"><span
							style="font-family: 'Arial'; font-weight: 700; color:white;  font-size: 13px;" class="menuchildicon">로그인</span>
							</a>
						<%
							} else if(vo.getM_id().equals("admin")){
						%>
						<a href="memController.jsp"><span
							style="font-family: 'Arial'; font-weight: 700; color:white;  font-size: 13px; margin-right : 15px;" class="menuchildicon">회원관리페이지</span>
							</a>
						<a href="update.jsp"><span
							style="font-family: 'Arial'; font-weight: 700; color:white;  font-size: 13px; margin-right : 15px;" class="menuchildicon">개인정보수정</span>
							</a> <a href="LogoutService"><span
							style="font-family: 'Arial'; font-weight: 700; color:white;  font-size: 13px;" class="menuchildicon">로그아웃</span>
							</a>
						<!-- 스크립틀릿 이용해서 처리 -->
						<%
							}else {
						%>
							<a href="update.jsp"><span
							style="font-family: 'Arial'; font-weight: 700; color:white;  font-size: 13px; margin-right : 15px" class="menuchildicon">개인정보수정</span>
							</a> <a href="LogoutService"><span
							style="font-family: 'Arial'; font-weight: 700; color:white;  font-size: 13px;" class="menuchildicon">로그아웃</span>
							</a>
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
						<li class="ttr_menu_items_parent dropdown active"><a
							href="about.jsp" class="ttr_menu_items_parent_link_active"><span
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
							href="Survey.jsp" class="ttr_menu_items_parent_link"><span
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


					<div class="ttr_About_html_row0 row">
						<div class="post_column col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="ttr_About_html_column00">
								<div
									style="height: 0px; width: 0px; overflow: hidden; -webkit-margin-top-collapse: separate;"></div>
								<div class="html_content">
									<p style="text-align: Center;">
										<span
											style="font-family: 'Arial'; font-weight: 700; font-size: 2em; color: rgba(5, 38, 55, 1);">입양
											절차를 소개합니다!</span>
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

					<div>
						<img id="banner" src="image/procedure3.png">
					</div>



				</div>
				<div class="ttr_About_html_row3 row">
					<div class="post_column col-lg-6 col-md-12 col-sm-12 col-xs-12">
						<div class="ttr_About_html_column30">
							<div
								style="height: 0px; width: 0px; overflow: hidden; -webkit-margin-top-collapse: separate;"></div>
							<div class="html_content">
								<p
									style="margin: 0.14em 0em 0em 0em; line-height: 1.76056338028169;">
									<span
										style="font-family: 'Arial'; font-weight: 700; font-size: 1.714em; color: rgba(255, 255, 255, 1);">입양
										동의서를 읽어주세요<span
										style="font-family: 'Arial'; font-weight: 700; font-size: 1.714em; color: rgba(255, 255, 255, 1);">.
									</span>
								</p>
								<p
									style="margin: 1.43em 0em 0em 0em; line-height: 1.76056338028169;">
									<span style="color: rgba(255, 255, 255, 1);">저희 입양 매칭
										프로그램 목표는 보호소 동물들에게 평생 함께 할 수 있는 가정을 찾아주는 것입니다. 한번 상처를 받은
										아이들이기에 그 상처를 보둠어주고 많은 사랑을 줄 수있는 가정을 찾고있기에 동의서를 꼼꼼히 읽으시고 신중한 선택
										부탁드리겠습니다. </span>
								</p>

								<p
									style="margin: 1.43em 0em 0em 0em; line-height: 1.76056338028169;">
									<span><a class="btn btn-lg btn-primary" target="_self"
										href="#abc">입양 동의서</a></span>
								</p>
							</div>

							<div id="abc" class="modal" style="position: static;">
								<p>
									<span style="font-weight: 700; font-size: 25px; color: red;">입양
										동의서</span><br> 목적<br> 입양 프로그램 목표는 보호소 동물들에게 평생 함께 할 수 있는
									가정을 찾아주는 것입니다.<br> <span
										style="font-weight: 700; font-size: 20px; color: red;">반드시
										숙지해야 할 상황</span><br> 입양할 동물들의 건강과 특성과 행동은 환경과 상황에 따라 달라집니다. 따라서
									입양은 주의 사항들을 동반합니다. 부디 아래에 적힌 주의사항들을 고려하시기 바랍니다. <br> <span
										style="font-weight: border; font-size: 18px; color: black;">
										· 입양된 반려동물이 입양자의 소유물을 망가뜨릴 수도 있습니다. <br> · 입양된 반려동물로부터
										사람들이나 다른 반려동물이 질병이 노출 될 수도 있습니다.<br> · 입양된 반려동물로부터 사람들이나
										다른 반려동물이 상해를 입을 수 있습니다.<br> · 입양한 동물이 너무 일찍 죽을 수도 있습니다. <br>
									</span> 입양 과정<br> 1. 입양신청자는 성인이어야 하며 모든 가족구성원들이 입양에 찬성, 동의를
									해야합니다. 또한 자가 주택이 아닌 경우 집주인의 동의 또한 얻어야 합니다. KAPS에서 이러한 동의를 서명한
									계약서를 요청 할 수도 있습니다. <br> 또한 KAPS는 동물을 입양하는데 적합하지 않다고 판단되는
									신청자들을 거절할 권리가 있습니다. <br> 2. 신청서를 잘 작성하신 후에 보호소로 오셔서 한두 번
									정도 동물들을 만나보기를 요청 드립니다. 이후 입양 전 한달 간의 테스트 기간을 시작합니다. 한달의 입양 전
									테스트기간동안에는 반려동물은 KAPS의 소속이며 담당직원이 정기적으로 연락을 할 것 입니다. <br>

									3. 테스트 기간이 끝낸 후에 그 동물을 입양하기를 원하시면 계약서에 서명하시고 입양 비용을 지불하셔야 됩니다.
									모든 단계가 완료되면 반려동물의 소속이 입양자에게로 이전됩니다.<br> 4. 입양자는 입양 계약서의
									복사본을 받을 것입니다. 혹 입양 동물이 병력이 있다면 그에 관련 된 병력복사본도 받을 수 있습니다. 입양 후
									7일 안에 동물병원에 입양한 동물을 데려가셔서 검사 받으시길 권합니다.<br> 입양되기 위한 동물의 자격<br>
									1. 건강한 상태에 있거나 질병이 있어도 회복이 가능하다고 판단되는 동물들이 입양 대상이 됩니다. <br>

									2. KAPS의 모든 동물들은 입양 전 중성화 수술을 받고 필요한 예방접종을 마치는 것이 원칙입니다.<br>
									간혹 중성화 수술이 불가능할 정도로 어린 동물의 경우, 건강을 회복하고 체중이 2kg이상이 될 때 중성화를
									하겠다라는 계약서에 서명을 하셔야 입양이 이루어질 수 있습니다.<br> 이 경우에는 중성화 수술이 완료된
									후에 동물 소속이 입양자에게 이전됩니다. 3. 심각한 건강문제나 고쳐지기 어려운 행동 문제가 있는 동물은 입양
									자격에 부합되지 않습니다.<br> 입양 후<br> 1. 입양하신 분들은 가끔 KAPS에
									연락하셔서 입양된 반려동물이 어떻게 지내고 있는지 알려주시기를 요청 드립니다. <br>입양된 동물이
									새로운 가정에서 잘 적응하고 지내기를 바랍니다.<br> 2. 만약 입양하신 동물을 훈련하는데 어려움이
									있으시거나 그들의 건강이 걱정되신다면 저희에게 이 번호로 (053 622 3588, 평일 오후 2시에서 5시)로
									연락 주시기 바랍니다.<br> KAPS의 직원들이 입양된 동물이 잘 적응 할 수 있도록 물심양면 도움을
									드릴 것입니다.<br> 3. 입양신청서에 명시되어 있듯이 고양이나 개에게 미용을 목적으로 하는 발톱 제거
									수술, 꼬리 절제 수술, 귀의 일부를 잘라내는 수술, 성대 제거 수술, 힘줄 절제술 등을 불필요한 수술을 해서는
									안 됩니다.<br> 4. 만약 입양자가 KAPS에서 입양한 동물을 파양 하기 바란다면 KAPS의 동의
									없이 다른 사람에게 입양 보내시는 안 됩니다.<br> 파양 하는 동물은 다시 KAPS 쉼터로 데려오셔야
									하고 그 비용은 본인이 부담해야 합니다. <br> 5. 입양비 환불은 불가능합니다. <br>
							</div>


							<script>
								WindowSize = function(x, y) {
									window.dialogWidth = x;
									window.dialogHeight = y;
								}

								$('a[href="#abc"]').click(function(event) {
									event.preventDefault();

									$(this).modal({
										fadeDuration : 250

									});
								});
							</script>


							<div
								style="height: 0px; width: 0px; overflow: hidden; -webkit-margin-top-collapse: separate;"></div>
							<div style="clear: both;"></div>
						</div>
					</div>
					<div
						class="clearfix visible-sm-block visible-md-block visible-xs-block">
					</div>
					<div class="post_column col-lg-6 col-md-12 col-sm-12 col-xs-12">
						<div class="ttr_About_html_column31">
							<div
								style="height: 0px; width: 0px; overflow: hidden; -webkit-margin-top-collapse: separate;"></div>
							<div class="html_content">
								<p
									style="margin: 0.14em 0em 0em 0em; line-height: 1.76056338028169;">
									<span
										style="font-family: 'Arial'; font-weight: 700; font-size: 1.714em; color: rgba(255, 255, 255, 1);">입양
										신청서 작성후 보내주세요<span
										style="font-family: 'Arial'; font-weight: 700; font-size: 1.714em; color: rgba(255, 255, 255, 1);">.
									</span>
								</p>
								<p
									style="margin: 1.43em 0em 0em 0em; line-height: 1.76056338028169;">
									<span style="color: rgba(255, 255, 255, 1);">저희 입양 매칭
										프로그램 목표는 보호소 동물들에게 평생 함께 할 수 있는 가정을 찾아주는 것입니다. 한번 상처를 받은
										아이들이기에 그 상처를 보둠어주고 많은 사랑을 줄 수있는 가정을 찾고있기에 동의서를 꼼꼼히 읽으시고 신중한 선택
										부탁드리겠습니다. </span>
								</p>
								<p
									style="margin: 1.43em 0em 0em 0em; line-height: 1.76056338028169;">
									<span><a HREF="Contact.jsp" target="_self"
										class="btn btn-lg btn-primary">설문지 작성</a></span>
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
				<div class="ttr_About_html_row4 row">
					<div class="post_column col-lg-3 col-md-12 col-sm-12 col-xs-12">
						<div class="ttr_About_html_column40">
							<div
								style="height: 0px; width: 0px; overflow: hidden; -webkit-margin-top-collapse: separate;"></div>
							<div class="html_content">
								<p>
									<span
										style="font-family: 'Arial'; font-weight: 700; font-size: 1.714em; color: rgba(52, 52, 52, 1);">더
										많은 강아지 <br> 보러가기
									</span>
								</p>
								<p
									style="margin: 1.43em 0em 0em 0em; line-height: 1.76056338028169;">
									<span style="color: rgba(5, 38, 55, 1);">Donec faucibus.
										Nunc iaculis suscipit dui.Nam sit amet sem. Aliquam libero
										nisi, imperdiet at, tincidunt nec, gravida vehicula,
										nisl.Praesent mattis, massa quis luctus fermentum</span><span
										style="color: rgba(5, 38, 55, 1);">.</span>
								</p>
								<p
									style="margin: 1.43em 0em 0em 0em; line-height: 1.76056338028169;">
									<span><a HREF="more.jsp" target="_self"
										class="btn btn-md btn-default">전체보기</a></span>
								</p>
							</div>
							<div
								style="height: 0px; width: 0px; overflow: hidden; -webkit-margin-top-collapse: separate;"></div>
							<div style="clear: both;"></div>
						</div>
					</div>
					<div
						class="clearfix visible-sm-block visible-md-block visible-xs-block">
					</div>
					<div class="post_column col-lg-3 col-md-4 col-sm-4 col-xs-12">

						<div class="ttr_About_html_column41">
							<img id="ban" img src="image/dog1.png">
							<div
								style="height: 0px; width: 0px; overflow: hidden; -webkit-margin-top-collapse: separate;"></div>
							<div
								style="height: 0px; width: 0px; overflow: hidden; -webkit-margin-top-collapse: separate;"></div>
							<div style="clear: both;"></div>
						</div>
					</div>
					<div class="clearfix visible-xs-block"></div>
					<div class="post_column col-lg-3 col-md-4 col-sm-4 col-xs-12">
						<div class="ttr_About_html_column42">
							<img id="ban" img src="image/dog2.png">
							<div
								style="height: 0px; width: 0px; overflow: hidden; -webkit-margin-top-collapse: separate;"></div>
							<!-- <div class="html_content"><p><span class="ttr_image" style="float:none;display:block;text-align:center;overflow:hidden;margin:0em 0em 0em 0em;"><span><img class="ttr_uniform" src="images/43.jpeg" style="max-width:300px;max-height:350px;" /></span></span></p></div> -->
							<div
								style="height: 0px; width: 0px; overflow: hidden; -webkit-margin-top-collapse: separate;"></div>
							<div style="clear: both;"></div>
						</div>
					</div>
					<div class="clearfix visible-xs-block"></div>
					<div class="post_column col-lg-3 col-md-4 col-sm-4 col-xs-12">
						<div class="ttr_About_html_column43">
							<img id="ban" img src="image/dog3.png">
							<div
								style="height: 0px; width: 0px; overflow: hidden; -webkit-margin-top-collapse: separate;"></div>
							<!-- <div class="html_content"><p><span class="ttr_image" style="float:none;display:block;text-align:center;overflow:hidden;margin:0em 0em 0em 0em;"><span><img class="ttr_uniform" src="images/44.jpeg" style="max-width:300px;max-height:350px;" /></span></span></p></div> -->
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
