<%@page import="com.VO.pet_boardVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.DAO.pet_boardDAO"%>
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
<title>Services</title>
<link rel="stylesheet" href="bootstrap1.css" type="text/css"
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

html, body {
  height: 100%;
  justify-content: flex-end	;
}

.wrap {
  height: 100%;
  display: flex;
 
  flx-flow : row nowrap;
  justify-content: flex-end	;
  float: right;
  font-size: 11px;
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
  border-radius: 70px;
  box-shadow: 0px 8px 15px rgba(0, 0, 0, 0.25);
  transition: all 0.3s ease 0s;
  cursor: pointer;
  outline: none;
  margin:30px 30px 30px 50px ;
  float: right;
  
  }

.button:hover {
  background-color: #66aaff;
  box-shadow: 0px 15px 20px rgba(0,0,0,0.25) ;
  color: #fff;
  transform: translateY(-7px);
  float: right;
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
					<p>
						<span style="font-size: 0.857em; color: rgba(243, 243, 243, 1);">+
							1 800 2306 2500</span>
					</p>
				</div>
			</div>
			<div class="ttr_headershape02">
				<div class="html_content">
					<p>
						<span style="font-size: 0.857em; color: rgba(243, 243, 243, 1);">50,
							MARTIN STREET MAIN MARKET, NEW YORK</span>
					</p>
				</div>
			</div>
		</div>
	</header>
	<nav id="ttr_menu" class="navbar-default navbar">
		<div id="ttr_menu_inner_in">
			<div class="menuforeground"></div>
			<div class="ttr_menushape1">
				<div class="html_content">
					<p>
						<span
							style="font-family: 'Arial'; font-weight: 700; font-size: 2.571em; color: rgba(78, 78, 78, 1);">DOG
							CLUB</span>
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
					<a href="http://www.templatetoaster.com" target="_self"> <img
						class="ttr_menu_logo" src="menulogo.png">
					</a>
				</div>
				<div class="menu-center collapse navbar-collapse">
					<ul class="ttr_menu_items nav navbar-nav navbar-right">
						<li class="ttr_menu_items_parent dropdown"><a
							href="home.html" class="ttr_menu_items_parent_link"><span
								class="menuchildicon"></span>Home</a>
							<hr class="horiz_separator" /></li>
						<li class="ttr_menu_items_parent dropdown"><a
							href="about.html" class="ttr_menu_items_parent_link"><span
								class="menuchildicon"></span>About</a>
							<hr class="horiz_separator" /></li>
						<li class="ttr_menu_items_parent dropdown active"><a
							href="services.html" class="ttr_menu_items_parent_link_active"><span
								class="menuchildicon"></span>Services</a>
							<hr class="horiz_separator" /></li>
						<li class="ttr_menu_items_parent dropdown"><a
							href="training.html" class="ttr_menu_items_parent_link"><span
								class="menuchildicon"></span>Training</a>
							<hr class="horiz_separator" /></li>
						<li class="ttr_menu_items_parent dropdown"><a
							href="contact.html" class="ttr_menu_items_parent_link"><span
								class="menuchildicon"></span>Contact</a>
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
						<div class="post_column col-lg-3 col-md-3 col-sm-3 col-xs-3">
							<div class="ttr_Services_html_column00">
								<div
									style="height: 0px; width: 0px; overflow: hidden; -webkit-margin-top-collapse: separate;"></div>
								<div class="html_content">
									<p style="text-align: right;">
										<span>

											<div class="wrap">
												<button class="button" HREF="#" target="_self" onclick="location.href='pet_list.jsp'">유기견 등록</button>
											</div>
											</span>
											<!-- 유기견등록 위치 boootstrap파일 변경 2611 float right로 변경 -->

											<div class="ttr_Services_html_column01">
										
											<div class="wrap">
												<button class="button" HREF="#" target="_self" onclick="location.href='pet_list.jsp'">입양등록 승인</button>
											</div>

									</div>	
										
									</p>
								</div>
								<div
									style="height: 100px; width: 100px; overflow: hidden; -webkit-margin-top-collapse: separate;"></div>
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
						
					<button style="float : right"><a href="pet_write.html">유기견 등록</a></button>
					<button style="float : right"><a href="approval.jsp">승인 목록</a></button>
					<br> <br>
					<% 
				
					
					for(int i=0; i<arr.size(); i++) {
					%>
						<form action="#">
							<table width="1200px" align="center"
								style= "border : 1px solid gray; text-align : center; border-collapse:collapse">
								
								
								<tr>
									<td rowspan="5" style="width: 100px" bgcolor="whitesmoke">
									<img width="100px" height="100px" src="../Upload/<%=arr.get(i).getB_image() %>">
									</td>
									<td colspan="4" bgcolor="whitesmoke"><%=arr.get(i).getB_name() %></td>
									<td rowspan="5" bgcolor="whitesmoke">
										<button width=100%><a href="pet_detail.jsp?num=<%=arr.get(i).getB_code() %>">수정</a></button> <br>
										<button width=100%>
											<a href="../petDeleteService?num=<%=arr.get(i).getB_code() %>">삭제</a>
										</button>
									</td>

								</tr>
								<tr>
									<td bgcolor="whitesmoke"><%=arr.get(i).getB_name() %></td>
									<td bgcolor="whitesmoke"><%=arr.get(i).getB_age() %></td>
									<td bgcolor="whitesmoke"><%=arr.get(i).getB_id() %></td>
									<td bgcolor="whitesmoke"><%=arr.get(i).getB_date() %></td>
								</tr>
								<tr bgcolor="whitesmoke">
									<td colspan="2"><%=arr.get(i).getB_gender() %></td>
									<td colspan="2"><%=arr.get(i).getB_spicies() %></td>
								</tr>
								<tr bgcolor="whitesmoke">
									<td colspan="2">펫식성<%=arr.get(i).getB_food() %></td>
									<td colspan="2">12</td>
								</tr>
								<tr>
									<td colspan="4" bgcolor="whitesmoke"><%=arr.get(i).getB_content() %></td>
								</tr>
							out.print(<%=arr.get(i).getB_image() %>);

							</table>
						</form>
						<br><br>
						<%} %>
						
						<br><br>


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
		<div class="ttr_footerServices_html_row0 row">
			<div class="post_column col-lg-3 col-md-6 col-sm-6 col-xs-12">
				<div class="ttr_footerServices_html_column00">
					<div
						style="height: 0px; width: 0px; overflow: hidden; -webkit-margin-top-collapse: separate;"></div>
					<div class="html_content">
						<p style="margin: 0.36em 0em 0.36em 4.29em;">
							<br
								style="font-family: 'Arial'; font-weight: 700; font-size: 1.286em; color: rgba(255, 255, 255, 1);" />
						</p>
						<p style="margin: 0.36em 0em 0.36em 4.29em;">
							<br
								style="font-family: 'Arial'; font-weight: 700; font-size: 1.286em; color: rgba(255, 255, 255, 1);" />
						</p>
						<p style="margin: 0.36em 0em 0.36em 4.29em;">
							<span
								style="font-family: 'Arial'; font-weight: 700; font-size: 1.286em; color: rgba(255, 255, 255, 1);">LOCATION</span>
						</p>
						<p
							style="margin: 1.43em 0em 0.36em 4.29em; line-height: 1.40845070422535;">
							<span
								style="font-family: 'Arial'; font-weight: 700; color: rgba(255, 255, 255, 1);">125,
								First Flore, Golden Suit,New York</span>
						</p>
						<p
							style="margin: 0.36em 0em 0.36em 4.29em; line-height: 1.40845070422535;">
							<span
								style="font-family: 'Arial'; font-weight: 700; color: rgba(255, 255, 255, 1);">Phone:
								1800 125 2000</span>
						</p>
						<p
							style="margin: 0.36em 0em 0.36em 4.29em; line-height: 1.40845070422535;">
							<span
								style="font-family: 'Arial'; font-weight: 700; color: rgba(255, 255, 255, 1);">Fax:
								1800 125 2000</span>
						</p>
					</div>
					<div
						style="height: 0px; width: 0px; overflow: hidden; -webkit-margin-top-collapse: separate;"></div>
				</div>
			</div>
			<div class="clearfix visible-xs-block"></div>
			<div class="post_column col-lg-3 col-md-6 col-sm-6 col-xs-12">
				<div class="ttr_footerServices_html_column01">
					<div
						style="height: 0px; width: 0px; overflow: hidden; -webkit-margin-top-collapse: separate;"></div>
					<div class="html_content">
						<p style="margin: 0.36em 0em 0.36em 4.29em;">
							<br
								style="font-family: 'Arial'; font-weight: 700; font-size: 1.286em; color: rgba(255, 255, 255, 1);" />
						</p>
						<p style="margin: 0.36em 0em 0.36em 4.29em;">
							<br
								style="font-family: 'Arial'; font-weight: 700; font-size: 1.286em; color: rgba(255, 255, 255, 1);" />
						</p>
						<p style="margin: 0.36em 0em 0.36em 4.29em;">
							<span
								style="font-family: 'Arial'; font-weight: 700; font-size: 1.286em; color: rgba(255, 255, 255, 1);">INFORMATION</span>
						</p>
						<p
							style="margin: 1.43em 0em 0.36em 4.29em; line-height: 1.40845070422535;">
							<span style="color: rgba(255, 255, 255, 1);">Aliquam </span>
						</p>
						<p
							style="margin: 0.36em 0em 0.36em 4.29em; line-height: 1.40845070422535;">
							<span style="color: rgba(255, 255, 255, 1);">L</span><span
								style="color: rgba(255, 255, 255, 1);">ibero nisi</span>
						</p>
						<p
							style="margin: 0.36em 0em 0.36em 4.29em; line-height: 1.40845070422535;">
							<span style="color: rgba(255, 255, 255, 1);">I</span><span
								style="color: rgba(255, 255, 255, 1);">perdiet at </span>
						</p>
						<p
							style="margin: 0.36em 0em 0.36em 4.29em; line-height: 1.40845070422535;">
							<span style="color: rgba(255, 255, 255, 1);">T</span><span
								style="color: rgba(255, 255, 255, 1);">incidunt </span>
						</p>
						<p
							style="margin: 0.36em 0em 0.36em 4.29em; line-height: 1.40845070422535;">
							<span style="color: rgba(255, 255, 255, 1);">G</span><span
								style="color: rgba(255, 255, 255, 1);">ravida </span>
						</p>
						<p
							style="margin: 0.36em 0em 0.36em 4.29em; line-height: 1.40845070422535;">
							<span style="color: rgba(255, 255, 255, 1);">V</span><span
								style="color: rgba(255, 255, 255, 1);">ehicula</span>
						</p>
					</div>
					<div
						style="height: 0px; width: 0px; overflow: hidden; -webkit-margin-top-collapse: separate;"></div>
				</div>
			</div>
			<div
				class="clearfix visible-sm-block visible-md-block visible-xs-block">
			</div>
			<div class="post_column col-lg-3 col-md-6 col-sm-6 col-xs-12">
				<div class="ttr_footerServices_html_column02">
					<div
						style="height: 0px; width: 0px; overflow: hidden; -webkit-margin-top-collapse: separate;"></div>
					<div class="html_content">
						<p style="margin: 0.36em 0em 0.36em 4.29em;">
							<br
								style="font-family: 'Arial'; font-weight: 700; font-size: 1.286em; color: rgba(255, 255, 255, 1);" />
						</p>
						<p style="margin: 0.36em 0em 0.36em 4.29em;">
							<br
								style="font-family: 'Arial'; font-weight: 700; font-size: 1.286em; color: rgba(255, 255, 255, 1);" />
						</p>
						<p style="margin: 0.36em 0em 0.36em 4.29em;">
							<span
								style="font-family: 'Arial'; font-weight: 700; font-size: 1.286em; color: rgba(255, 255, 255, 1);">EXTRAS</span>
						</p>
						<p
							style="margin: 1.43em 0em 0.36em 4.29em; line-height: 1.40845070422535;">
							<span style="color: rgba(255, 255, 255, 1);">Aliquam </span>
						</p>
						<p
							style="margin: 0.36em 0em 0.36em 4.29em; line-height: 1.40845070422535;">
							<span style="color: rgba(255, 255, 255, 1);">L</span><span
								style="color: rgba(255, 255, 255, 1);">ibero nisi</span>
						</p>
						<p
							style="margin: 0.36em 0em 0.36em 4.29em; line-height: 1.40845070422535;">
							<span style="color: rgba(255, 255, 255, 1);">I</span><span
								style="color: rgba(255, 255, 255, 1);">perdiet at </span>
						</p>
						<p
							style="margin: 0.36em 0em 0.36em 4.29em; line-height: 1.40845070422535;">
							<span style="color: rgba(255, 255, 255, 1);">T</span><span
								style="color: rgba(255, 255, 255, 1);">incidunt </span>
						</p>
						<p
							style="margin: 0.36em 0em 0.36em 4.29em; line-height: 1.40845070422535;">
							<span style="color: rgba(255, 255, 255, 1);">G</span><span
								style="color: rgba(255, 255, 255, 1);">ravida </span>
						</p>
						<p
							style="margin: 0.36em 0em 0.36em 4.29em; line-height: 1.40845070422535;">
							<span style="color: rgba(255, 255, 255, 1);">V</span><span
								style="color: rgba(255, 255, 255, 1);">ehicula</span>
						</p>
					</div>
					<div
						style="height: 0px; width: 0px; overflow: hidden; -webkit-margin-top-collapse: separate;"></div>
				</div>
			</div>
			<div class="clearfix visible-xs-block"></div>
			<div class="post_column col-lg-3 col-md-6 col-sm-6 col-xs-12">
				<div class="ttr_footerServices_html_column03">
					<div
						style="height: 0px; width: 0px; overflow: hidden; -webkit-margin-top-collapse: separate;"></div>
					<div class="html_content">
						<p style="margin: 0.36em 0em 0.36em 4.29em;">
							<br
								style="font-family: 'Arial'; font-weight: 700; font-size: 1.286em; color: rgba(255, 255, 255, 1);" />
						</p>
						<p style="margin: 0.36em 0em 0.36em 4.29em;">
							<br
								style="font-family: 'Arial'; font-weight: 700; font-size: 1.286em; color: rgba(255, 255, 255, 1);" />
						</p>
						<p style="margin: 0.36em 0em 0.36em 4.29em;">
							<span
								style="font-family: 'Arial'; font-weight: 700; font-size: 1.286em; color: rgba(255, 255, 255, 1);">FOLLOW
								US</span>
						</p>
						<p
							style="margin: 1.43em 0em 0.36em 4.29em; line-height: 1.40845070422535;">
							<span style="color: rgba(255, 255, 255, 1);">Facebook</span>
						</p>
						<p
							style="margin: 0.36em 0em 0.36em 4.29em; line-height: 1.40845070422535;">
							<span style="color: rgba(255, 255, 255, 1);">Twitter</span>
						</p>
						<p
							style="margin: 0.36em 0em 0.36em 4.29em; line-height: 1.40845070422535;">
							<span style="color: rgba(255, 255, 255, 1);">Linkedin</span><span
								style="color: rgba(255, 255, 255, 1);"> </span>
						</p>
						<p
							style="margin: 0.36em 0em 0.36em 4.29em; line-height: 1.40845070422535;">
							<span style="color: rgba(255, 255, 255, 1);">RSS</span><span
								style="color: rgba(255, 255, 255, 1);"> </span>
						</p>
					</div>
					<div
						style="height: 0px; width: 0px; overflow: hidden; -webkit-margin-top-collapse: separate;"></div>
				</div>
			</div>
			<div
				class="clearfix visible-lg-block visible-sm-block visible-md-block visible-xs-block">
			</div>
		</div>
		<div class="ttr_footer_bottom_footer">
			<div class="ttr_footer_bottom_footer_inner">
				<div id="ttr_footer_designed_by_links">
					<a href="http://templatetoaster.com" target="_self"> Website </a> <span
						id="ttr_footer_designed_by"> Designed With TemplateToaster
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

