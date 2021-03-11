<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
 
  
  
  
  
  
  
  
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

#ttr_footer { \
	width: 2000px;
	height: 200px;
	position: bottom !important;
}

.modal-content {
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
	/* min-height: 100%; */
	/* border-radius: 0; */
}

#abc {
	overflow: auto;
}

.modal {
	max-width: none;
	width: 600px;
}

#content {
	width: 500px !important;

}

input {
	border: 0px !important;
}

#btn_area {
	width: 100px !important;
	height: 100px !important;
	color: blue;
}

#btnJoin {
	width: 400px !important;
	height: 50px !important;
	background-color: red;
}
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




						<a href="SignUp2.jsp" class="ttr_menu_items_parent_link"><span
							style="font-family: 'Arial'; font-weight: 700; color: white; font-size: 13px; margin-right: 15px;"
							class="menuchildicon">회원가입 </span></a> <a href="Login.jsp"><span
							style="font-family: 'Arial'; font-weight: 700; color: white; font-size: 13px;"
							class="menuchildicon">로그인</span> </a>







					</p>
				</div>
			</div>
			<div class="ttr_headershape02">
				<div class="html_content"></div>
			</div>
		</div>
	</header>
<head>
<meta charset="utf-8">
<title>회원가입</title>
<link rel="stylesheet" href="bootstrap.css">
<link rel="stylesheet" href="SignUp.css">





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


</head>
<body>



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
						<li class="ttr_menu_items_parent dropdown active"><a
							href="about.html" class="ttr_menu_items_parent_link_active"><span
								class="menuchildicon"></span>입양절차</a>
							<hr class="horiz_separator" /></li>
						<li class="ttr_menu_items_parent dropdown"><a
							href="services.html" class="ttr_menu_items_parent_link"><span
								class="menuchildicon"></span>유기견 등록하기</a>
							<hr class="horiz_separator" /></li>
						<li class="ttr_menu_items_parent dropdown"><a
							href="Community1.jsp" class="ttr_menu_items_parent_link"><span
								class="menuchildicon"></span>커뮤니티</a>
							<hr class="horiz_separator" /></li>
						<li class="ttr_menu_items_parent dropdown"><a
							href="Contact.jsp" class="ttr_menu_items_parent_link"><span
								class="menuchildicon"></span>견종 검색</a>
							<hr class="horiz_separator" /></li>
					</ul>
				</div>
			</div>
		</div>
	</nav>




	<script language="javascript">
      // opener관련 오류가 발생하는 경우 아래 주석을 해지하고, 사용자의 도메인정보를 입력합니다. ("팝업API 호출 소스"도 동일하게 적용시켜야 합니다.)
      //document.domain = "abc.go.kr";

      function goPopup() {
         // 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(https://www.juso.go.kr/addrlink/addrLinkUrl.do)를 호출하게 됩니다.
         var pop = window.open("jusoPopup.jsp", "pop",
               "width=570,height=420, scrollbars=yes, resizable=yes");

         // 모바일 웹인 경우, 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(https://www.juso.go.kr/addrlink/addrMobileLinkUrl.do)를 호출하게 됩니다.
         //var pop = window.open("/popup/jusoPopup.jsp","pop","scrollbars=yes, resizable=yes"); 
      }
      /** API 서비스 제공항목 확대 (2017.02) **/
      function jusoCallBack(roadFullAddr, roadAddrPart1, addrDetail,
            roadAddrPart2, engAddr, jibunAddr, zipNo, admCd, rnMgtSn,
            bdMgtSn, detBdNmList, bdNm, bdKdcd, siNm, sggNm, emdNm, liNm,
            rn, udrtYn, buldMnnm, buldSlno, mtYn, lnbrMnnm, lnbrSlno, emdNo) {
         // 팝업페이지에서 주소입력한 정보를 받아서, 현 페이지에 정보를 등록합니다.
	
         
         var road1 = document.getElementById("roadAddrPart1");
         var road2 = document.getElementById("roadAddrPart2");
         var detail = document.getElementById("addrDetail");
         var zipno = document.getElementById("zipNo");
         road1.value = roadAddrPart1;
         road2.value = roadAddrPart2;
         detail.value = addrDetail;
         zipno.value = zipNo;
         
         //document.form.roadAddrPart1.value = roadAddrPart1;
         //document.form.roadAddrPart2.value = roadAddrPart2;
         //document.form.addrDetail.value = addrDetail;
         //document.form.zipNo.value = zipNo;
      }
   </script>



<form action="sessionMeminfo" method="post" name="sub">

	<!-- wrapper -->
	<div id="wrapper">

		<!-- content-->
		<div id="content">

			<!-- ID -->
			<div>
				<h3 class="join_title">
					<label for="id">아이디</label>
				</h3>
				<span class="box int_id"> <input type="text" id="id"
					class="int" maxlength="20" name="id">
				</span> <span class="error_next_box"></span>
			</div>

			<!-- PW1 -->
			<div>
				<h3 class="join_title">
					<label for="pswd1">비밀번호</label>
				</h3>
				<span class="box int_pass"> <input type="password" id="pswd1"
					class="int" maxlength="20"> <span id="alertTxt" >사용불가</span>
					<!--   <img src="m_icon_pass.png" id="pswd1_img1"
					class="pswdImg"> -->
				</span>
				<!-- <span class="error_next_box"></span> -->
			</div>

			<!-- PW2 -->
			<div>
				<h3 class="join_title">
					<label for="pswd2">비밀번호 재확인</label>
				</h3>
				<span class="box int_pass_check"> <input type="password"
					id="pswd2" class="int" maxlength="20" onblur="test()" name="pw"> <img
					src="m_icon_check_disable.png" id="pswd2_img1" class="pswdImg">
				</span> <span class="error_next_box"></span>
			</div>
			<script type="text/javascript">
		    function test() {
		      var p1 = document.getElementById('pswd1').value;
		      var p2 = document.getElementById('pswd2').value;
		      if( p1 != p2 ) {
		        alert("비밀번호가 일치 하지 않습니다");
		        return false;
		      } else{
		        alert("비밀번호가 일치합니다");
		        return true;
		      }
		
		    }
		  </script>
			<!-- NAME -->
			<div>
				<h3 class="join_title">
					<label for="name">이름</label>
				</h3>
				<span class="box int_name"> <input type="text" id="name"
					class="int" maxlength="20" name="name">
				</span> <span class="error_next_box"></span>
			</div>


			<title>주소 입력 샘플</title>



			<div>
				<h3 class="join_title">
					<label for="name">이름</label>
				</h3>


				<form name="form" id="form" method="post">
					<table>
						<colgroup>
							<col style="width: 20%">
							<col>
						</colgroup>
						<tbody>
							<tr>
								<th>우편번호</th>
								<td><input type="hidden" id="confmKey" name="confmKey"
									value=""> <input type="text" id="zipNo" name="zipNo"
									readonly style="width: 100px"> <input type="button"
									value="주소검색" onclick="goPopup();"></td>
							</tr>
							<tr>
								<th>도로명주소</th>
								<td><input type="text" id="roadAddrPart1" name="road"
									style="width: 100%"></td>
							</tr>
							<tr>
								<th>상세주소</th>
								<td width=700px><input type="text" id="addrDetail" style="width: 45%"
									value="" name="road2"> <input type="text" id="roadAddrPart2"
									style="width: 45%" value=""></td>
							</tr>
						</tbody>
					</table>
				</form>


			</div>











			<!-- BIRTH -->
			<div>
				<title>input 태그의 type속성 값 date</title>
				</head>
				<body>
					<h1>당신의 생일은 ?</h1>
					
						<input type='date' name="birth" />
					
			</div>



			<!-- GENDER -->
			<div>
				<h3 class="join_title">
					<label for="gender">성별</label>
				</h3>
				<span class="box gender_code"> <select id="gender"
					class="sel" name="gender">
						<option>성별</option>
						<option value="M">남자</option>
						<option value="F">여자</option>
				</select>
				</span> <span class="error_next_box">필수 정보입니다.</span>
			</div>

			<!-- EMAIL -->
			<div>
				<h3 class="join_title">
					<label for="email">본인확인 이메일<span class="optional">(선택)</span></label>
				</h3>
				<span class="box int_email"> <input type="text" id="email" name="email"
					class="int" maxlength="100" placeholder="선택입력">
				</span> <span class="error_next_box">이메일 주소를 다시 확인해주세요.</span>
			</div>

			<!-- MOBILE -->
			<div>
				<h3 class="join_title">
					<label for="phoneNo">휴대전화</label>
				</h3>
				<span class="box int_mobile"> <input type="tel" id="mobile" name="phone"
					class="int" maxlength="16" placeholder="전화번호 입력">
				</span> <span class="error_next_box"></span>
			</div>


			<!-- JOIN BTN-->
			
				<!-- <button type="button" id="btnJoin"
					onclick="location.href='Search.jsp'">
					<span> 넘어가기</span>
				</button> -->
			
			
			
			
			<div class="pull-right btn btn-md btn-default"
					style="margin-top: 30px; margin-bottom: 100px">

					<input type="button" value="넘어가기" onclick="sub1()"
						style="width: 430px; height: 51px; background-color: #037fbb; color: white; font-size: 20px" />
				<script type="text/javascript">
					function sub1() {
						 document.sub.submit();
					}
				</script>



				<!-- </button> -->
			</div>
		</div>

</form>






		<!-- content-->

	</div>

</body>
</html>




</div>
<div style="height: 0px; width: 0px; overflow: hidden;"></div>

<div
	style="height: 0px; width: 0px; overflow: hidden; -webkit-margin-bottom-collapse: separate;"></div>
<script type="text/javascript">
WebFontConfig = {
google: { families: [ 'Open+Sans','Open+Sans:700'] }
};
(function() {
var wf = document.createElement('script');
wf.src = ('https:' == document.location.protocol ? 'https' : 'http') + '://ajax.googleapis.com/ajax/libs/webfont/1.0.31/webfont.js';
wf.type = 'text/javascript';
wf.async = 'true';
var s = document.getElementsByTagName('script')[0];
s.parentNode.insertBefore(wf, s);
})();
</script>
</body>
</html>

