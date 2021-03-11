<%@page import="com.VO.memberVO"%>
<%@page import="com.VO.pet_petVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.VO.pet_boardVO"%>
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
table, th, td {
   border: 1px solid #bcbcbc;
  }
table {
    
    margin-left: auto;
    margin-right: auto;
  }

html, body {
  height: 100%;
  font-family: 'Roboto', sans-serif;
}

.wrap {
  height: 100%;
  display: flex;
  align-items: left;
  justify-content: left;
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
  margin:10px 10px 10px 10px ;
  
  }

.button:hover {
  background-color: #66aaff;
  box-shadow: 0px 15px 20px rgba(0,0,0,0.25) ;
  color: #fff;
  transform: translateY(-7px);
}
.Services{
font-family: 'Roboto', sans-serif;
}
  
</style>

</head>
<body class="Services">
	
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
							style="font-family: 'Arial'; font-weight: 700; color:white;  font-size: 13px;" class="menuchildicon">개인정보수정</span>
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
						<div class="post_column col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="ttr_Services_html_column00">
								<div
									style="height: 0px; width: 0px; overflow: hidden; -webkit-margin-top-collapse: separate;"></div>
								<div class="html_content">
									<p style="text-align: Center;">
										<span
											style="font-family: 'Arial'; font-weight: 700; 
											font-size: 3em; color: rgba(5, 38, 55, 1); "style="text-align: Center;
											margin-left: auto;
    										margin-right: auto;"
											>
											OO유기견 현황 </span>
											
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
					
						
						System.out.println("검색된 arr의 사이즈---> " + arr.size());
						for (int i = 0; i < arr.size();  i++) {
					%>
					
				<table width="800px" align="center" style="border: 1px solid gray; border-collapse: collapse; border-spacing: 0">
					<tr>
					
					<td>
					<div class="post_column col-lg-11 col-md-11 col-sm-11 col-xs-11">
						<div class="ttr_Services_html_column10">
								<div
									style="height: 0px; width: 0px; overflow: hidden; -webkit-margin-top-collapse: separate;"></div>
								<div class="html_content">
									<p style="margin: 0.14em 0em 0em 0em;">
										<span class="ttr_image"
											style="float: Left; overflow: hidden; margin: 0em 1.43em 0em 0em;">
											<span>
											<img
												class="ttr_uniform" src="${pageContext.request.contextPath}/Upload/<%=arr.get(i).getB_image() %>"
												style="max-width: 250px; max-height: 250px;" />
												</span>
												</span>
												
												<span style="font-family: 'Arial'; font-weight: 700; font-size: 1.286em; color: rgba(78, 78, 78, 1);">
												
												<%=arr.get(i).getB_title() %>
												
												
												</span>
					
					
											
									</p>
									<p
										style="margin: 0.71em 0em 0em 0em; line-height: 1.76056338028169;">
										
										<span style="color: rgba(5, 38, 55, 1); font-family : 'Roboto', Sans-serif">
									
										 -품종 : <%=arr.get(i).getB_spicies() %></br>
										 -나이 : <%=arr.get(i).getB_age() %></br>
										 -성별 : <%=arr.get(i).getB_gender() %></br>
										 -이름 : <%=arr.get(i).getB_name() %></br>
										
										</span>
											
									</p>
									<p
										style="margin: 50px 50px 50px 50px; line-height: 1.76056338028169;">
										
									</p>
								</div>
								<div
									style="height: 0px; width: 0px; overflow: hidden; -webkit-margin-top-collapse: separate;"></div>
								<div style="clear: both;"></div>
							</div>
						</div>
						
						</td  align="center">
						
						
						<td width="100px"> 
						
						<div class="wrap"><button class="button register-button">신청하기</button></div>
												
						<div class="wrap"><a href="#" onClick="window.open('https://www.kkc.or.kr/megazine', '_blank', 'width=1000px, height=800px')"><button class="button">견종 정보</button></a></div>					
										
						</td>
						
	
						
						</tr>
						
							
 						</table> 
 						
 						<br><br><br><br><br><br>
 						
						<%
							
						}
						%>

					<script type="text/javascript">
					
						function changeBtnState(e) {
							e.currentTarget.innerText = '신청 완료';		
							e.currentTarget.disabled = "true";					
							e.currentTarget.style.backgroundColor = "skyblue";
							e.currentTarget.style.color = "black";
							e.currentTarget.style.transform = "translateY(0px)";
							e.currentTarget.style.boxShadow = "0px 15px 20px rgba(0,0,0,0.1)";
							
						}
					
						const applyButtonElem = document.querySelectorAll(".button.register-button");
						
						for (let i=0; i <= applyButtonElem.length;  i++) {
							
							applyButtonElem[i].addEventListener("click", (event) => {
								changeBtnState(event)
							});					
						}
					
					
					
/* 						function btn_hide() {
							var elem = document.getElementById("apply");
							elem.innerText = "신청 완료";
							elem.disabled = "true";

							const btnElem = document
									.querySelector(".button.register-button");
							btnElem.style.backgroundColor = "skyblue";
							btnElem.style.color = "black";
							btnElem.style.transform = "translateY(0px)";
							btnElem.style.boxShadow = "0px 15px 20px rgba(0,0,0,0.1)";
						} */
					</script>



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

