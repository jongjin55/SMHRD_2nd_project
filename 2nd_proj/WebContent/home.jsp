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
<title>TO GET D.O.G</title>

<link rel="stylesheet" href="bootstrap.css" type="text/css"
	media="screen" />
<link rel="stylesheet" href="style.css" type="text/css" media="screen" />


  <style>
    *{margin:0;padding:0;}
    ul,li{list-style:none;}
    .slide{height:300px;overflow:hidden;}
    .slide ul{width:calc(100% * 5);display:flex;animation:slide 8s infinite;} /* slide�� 8�ʵ��� �����ϸ� ���ѹݺ� �� */
    .slide li{width:calc(100% / 5);height:300px;}
    .slide li:nth-child(1){margin-left : 500px}
    .slide li:nth-child(2){}
    .slide li:nth-child(3){}
    .slide li:nth-child(4){}
    
    @keyframes slide {
      0% {margin-left:0;} /* 0 ~ 10  : ���� */
      10% {margin-left:0;} /* 10 ~ 25 : ���� */
      25% {margin-left:-100%;} /* 25 ~ 35 : ���� */
      35% {margin-left:-100%;} /* 35 ~ 50 : ���� */
      50% {margin-left:-200%;}
      60% {margin-left:-200%;}
      75% {margin-left:-300%;}
      85% {margin-left:-300%;}
      100% {margin-left:0;}
    }
  </style>

</head>


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
						if (vo == null) {//id�� null���̾�����
					%>
					<a href="SignUp1.jsp" class="ttr_menu_items_parent_link"><span
						style="font-family: 'Arial'; font-weight: 700; color: white; font-size: 13px; margin-right: 15px;"
						class="menuchildicon">ȸ������ </span></a> <a href="Login.jsp"><span
						style="font-family: 'Arial'; font-weight: 700; color: white; font-size: 13px;"
						class="menuchildicon">�α���</span> </a>
					<%
						} else if (vo.getM_id().equals("admin")) {
					%>
					<a href="memController.jsp"><span
						style="font-family: 'Arial'; font-weight: 700; color: white; font-size: 13px; margin-right: 15px;"
						class="menuchildicon">ȸ������������</span> </a> <a href="update.jsp"><span
						style="font-family: 'Arial'; font-weight: 700; color: white; font-size: 13px; margin-right: 15px;"
						class="menuchildicon">������������</span> </a> <a href="LogoutService"><span
						style="font-family: 'Arial'; font-weight: 700; color: white; font-size: 13px;"
						class="menuchildicon">�α׾ƿ�</span> </a>
					<!-- ��ũ��Ʋ�� �̿��ؼ� ó�� -->
					<%
						} else {
					%>
					<a href="update.jsp"><span
						style="font-family: 'Arial'; font-weight: 700; color: white; font-size: 13px; margin-right : 15px"
						class="menuchildicon">������������</span> </a> <a href="LogoutService"><span
						style="font-family: 'Arial'; font-weight: 700; color: white; font-size: 13px;"
						class="menuchildicon">�α׾ƿ�</span> </a>
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
								class="menuchildicon"></span>�Ծ�����</a>
							<hr class="horiz_separator" /></li>


						<%
							if (vo != null) {
							if (vo.getM_id().equals("admin")) {
						%>
						<li class="ttr_menu_items_parent dropdown"><a
							href="pet_Services.jsp" class="ttr_menu_items_parent_link"><span
								class="menuchildicon"></span>����� ����ϱ�</a>
							<hr class="horiz_separator" /></li>
						<%
							}
						}
						%>



						<li class="ttr_menu_items_parent dropdown"><a
							href="Community1.jsp" class="ttr_menu_items_parent_link"><span
								class="menuchildicon"></span>Ŀ�´�Ƽ</a>
							<hr class="horiz_separator" /></li>
						<li class="ttr_menu_items_parent dropdown"><a href="#"
							class="ttr_menu_items_parent_link"><span
								class="menuchildicon"></span>���� �˻�</a>
							<hr class="horiz_separator" /></li>

					</ul>
				</div>
			</div>
		</div>
	</nav>


<div class="slide">
    <ul>
      <li><img src="image/screen1.png" width="900px" height="300px"></li>
      <li><img src="image/screen2.png" width="900px" height="300px"></li>
      <li><img src="image/screen3.png" width="900px" height="300px"></li>
      <li><img src="image/screen5.png" width="900px" height="300px"></li>
    
    </ul>
  </div>

<div>
<span>
<img src="image/screen4.png" width="900px" height="300px" style="margin-left: 500px">
</span>


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
						Designed by ������ ��öȭ ����ȯ ������ �̸� </span>
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
