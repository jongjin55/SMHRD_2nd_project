


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
<title>�Ծ�����</title>

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
					
							if (vo == null) {//id�� null���̾�����
						%>
						<a href="SignUp1.jsp" class="ttr_menu_items_parent_link"><span
							 style="font-family: 'Arial'; font-weight: 700; color: white; font-size: 13px; margin-right : 15px;" class="menuchildicon">ȸ������
							 </span></a>
							  <a href="Login.jsp"><span
							style="font-family: 'Arial'; font-weight: 700; color:white;  font-size: 13px;" class="menuchildicon">�α���</span>
							</a>
						<%
							} else if(vo.getM_id().equals("admin")){
						%>
						<a href="memController.jsp"><span
							style="font-family: 'Arial'; font-weight: 700; color:white;  font-size: 13px; margin-right : 15px;" class="menuchildicon">ȸ������������</span>
							</a>
						<a href="update.jsp"><span
							style="font-family: 'Arial'; font-weight: 700; color:white;  font-size: 13px; margin-right : 15px;" class="menuchildicon">������������</span>
							</a> <a href="LogoutService"><span
							style="font-family: 'Arial'; font-weight: 700; color:white;  font-size: 13px;" class="menuchildicon">�α׾ƿ�</span>
							</a>
						<!-- ��ũ��Ʋ�� �̿��ؼ� ó�� -->
						<%
							}else {
						%>
							<a href="update.jsp"><span
							style="font-family: 'Arial'; font-weight: 700; color:white;  font-size: 13px; margin-right : 15px" class="menuchildicon">������������</span>
							</a> <a href="LogoutService"><span
							style="font-family: 'Arial'; font-weight: 700; color:white;  font-size: 13px;" class="menuchildicon">�α׾ƿ�</span>
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
						<li class="ttr_menu_items_parent dropdown"><a
							href="Survey.jsp" class="ttr_menu_items_parent_link"><span
								class="menuchildicon"></span>���� �˻�</a>
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
											style="font-family: 'Arial'; font-weight: 700; font-size: 2em; color: rgba(5, 38, 55, 1);">�Ծ�
											������ �Ұ��մϴ�!</span>
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
										style="font-family: 'Arial'; font-weight: 700; font-size: 1.714em; color: rgba(255, 255, 255, 1);">�Ծ�
										���Ǽ��� �о��ּ���<span
										style="font-family: 'Arial'; font-weight: 700; font-size: 1.714em; color: rgba(255, 255, 255, 1);">.
									</span>
								</p>
								<p
									style="margin: 1.43em 0em 0em 0em; line-height: 1.76056338028169;">
									<span style="color: rgba(255, 255, 255, 1);">���� �Ծ� ��Ī
										���α׷� ��ǥ�� ��ȣ�� �����鿡�� ��� �Բ� �� �� �ִ� ������ ã���ִ� ���Դϴ�. �ѹ� ��ó�� ����
										���̵��̱⿡ �� ��ó�� ���Ҿ��ְ� ���� ����� �� ���ִ� ������ ã���ֱ⿡ ���Ǽ��� �Ĳ��� �����ð� ������ ����
										��Ź�帮�ڽ��ϴ�. </span>
								</p>

								<p
									style="margin: 1.43em 0em 0em 0em; line-height: 1.76056338028169;">
									<span><a class="btn btn-lg btn-primary" target="_self"
										href="#abc">�Ծ� ���Ǽ�</a></span>
								</p>
							</div>

							<div id="abc" class="modal" style="position: static;">
								<p>
									<span style="font-weight: 700; font-size: 25px; color: red;">�Ծ�
										���Ǽ�</span><br> ����<br> �Ծ� ���α׷� ��ǥ�� ��ȣ�� �����鿡�� ��� �Բ� �� �� �ִ�
									������ ã���ִ� ���Դϴ�.<br> <span
										style="font-weight: 700; font-size: 20px; color: red;">�ݵ��
										�����ؾ� �� ��Ȳ</span><br> �Ծ��� �������� �ǰ��� Ư���� �ൿ�� ȯ��� ��Ȳ�� ���� �޶����ϴ�. ����
									�Ծ��� ���� ���׵��� �����մϴ�. �ε� �Ʒ��� ���� ���ǻ��׵��� ����Ͻñ� �ٶ��ϴ�. <br> <span
										style="font-weight: border; font-size: 18px; color: black;">
										�� �Ծ�� �ݷ������� �Ծ����� �������� �����߸� ���� �ֽ��ϴ�. <br> �� �Ծ�� �ݷ������κ���
										������̳� �ٸ� �ݷ������� ������ ���� �� ���� �ֽ��ϴ�.<br> �� �Ծ�� �ݷ������κ��� ������̳�
										�ٸ� �ݷ������� ���ظ� ���� �� �ֽ��ϴ�.<br> �� �Ծ��� ������ �ʹ� ���� ���� ���� �ֽ��ϴ�. <br>
									</span> �Ծ� ����<br> 1. �Ծ��û�ڴ� �����̾�� �ϸ� ��� �������������� �Ծ翡 ����, ���Ǹ�
									�ؾ��մϴ�. ���� �ڰ� ������ �ƴ� ��� �������� ���� ���� ���� �մϴ�. KAPS���� �̷��� ���Ǹ� ������
									��༭�� ��û �� ���� �ֽ��ϴ�. <br> ���� KAPS�� ������ �Ծ��ϴµ� �������� �ʴٰ� �ǴܵǴ�
									��û�ڵ��� ������ �Ǹ��� �ֽ��ϴ�. <br> 2. ��û���� �� �ۼ��Ͻ� �Ŀ� ��ȣ�ҷ� ���ż� �ѵ� ��
									���� �������� �������⸦ ��û �帳�ϴ�. ���� �Ծ� �� �Ѵ� ���� �׽�Ʈ �Ⱓ�� �����մϴ�. �Ѵ��� �Ծ� ��
									�׽�Ʈ�Ⱓ���ȿ��� �ݷ������� KAPS�� �Ҽ��̸� ��������� ���������� ������ �� �� �Դϴ�. <br>

									3. �׽�Ʈ �Ⱓ�� ���� �Ŀ� �� ������ �Ծ��ϱ⸦ ���Ͻø� ��༭�� �����Ͻð� �Ծ� ����� �����ϼž� �˴ϴ�.
									��� �ܰ谡 �Ϸ�Ǹ� �ݷ������� �Ҽ��� �Ծ��ڿ��Է� �����˴ϴ�.<br> 4. �Ծ��ڴ� �Ծ� ��༭��
									���纻�� ���� ���Դϴ�. Ȥ �Ծ� ������ ������ �ִٸ� �׿� ���� �� ���º��纻�� ���� �� �ֽ��ϴ�. �Ծ� ��
									7�� �ȿ� ���������� �Ծ��� ������ �������ż� �˻� �����ñ� ���մϴ�.<br> �Ծ�Ǳ� ���� ������ �ڰ�<br>
									1. �ǰ��� ���¿� �ְų� ������ �־ ȸ���� �����ϴٰ� �ǴܵǴ� �������� �Ծ� ����� �˴ϴ�. <br>

									2. KAPS�� ��� �������� �Ծ� �� �߼�ȭ ������ �ް� �ʿ��� ���������� ��ġ�� ���� ��Ģ�Դϴ�.<br>
									��Ȥ �߼�ȭ ������ �Ұ����� ������ � ������ ���, �ǰ��� ȸ���ϰ� ü���� 2kg�̻��� �� �� �߼�ȭ��
									�ϰڴٶ�� ��༭�� ������ �ϼž� �Ծ��� �̷���� �� �ֽ��ϴ�.<br> �� ��쿡�� �߼�ȭ ������ �Ϸ��
									�Ŀ� ���� �Ҽ��� �Ծ��ڿ��� �����˴ϴ�. 3. �ɰ��� �ǰ������� �������� ����� �ൿ ������ �ִ� ������ �Ծ�
									�ڰݿ� ���յ��� �ʽ��ϴ�.<br> �Ծ� ��<br> 1. �Ծ��Ͻ� �е��� ���� KAPS��
									�����ϼż� �Ծ�� �ݷ������� ��� ������ �ִ��� �˷��ֽñ⸦ ��û �帳�ϴ�. <br>�Ծ�� ������
									���ο� �������� �� �����ϰ� �����⸦ �ٶ��ϴ�.<br> 2. ���� �Ծ��Ͻ� ������ �Ʒ��ϴµ� �������
									�����ðų� �׵��� �ǰ��� �����ǽŴٸ� ���񿡰� �� ��ȣ�� (053 622 3588, ���� ���� 2�ÿ��� 5��)��
									���� �ֽñ� �ٶ��ϴ�.<br> KAPS�� �������� �Ծ�� ������ �� ���� �� �� �ֵ��� ���ɾ�� ������
									�帱 ���Դϴ�.<br> 3. �Ծ��û���� ��õǾ� �ֵ��� ����̳� ������ �̿��� �������� �ϴ� ���� ����
									����, ���� ���� ����, ���� �Ϻθ� �߶󳻴� ����, ���� ���� ����, ���� ������ ���� ���ʿ��� ������ �ؼ���
									�� �˴ϴ�.<br> 4. ���� �Ծ��ڰ� KAPS���� �Ծ��� ������ �ľ� �ϱ� �ٶ��ٸ� KAPS�� ����
									���� �ٸ� ������� �Ծ� �����ô� �� �˴ϴ�.<br> �ľ� �ϴ� ������ �ٽ� KAPS ���ͷ� �������ž�
									�ϰ� �� ����� ������ �δ��ؾ� �մϴ�. <br> 5. �Ծ�� ȯ���� �Ұ����մϴ�. <br>
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
										style="font-family: 'Arial'; font-weight: 700; font-size: 1.714em; color: rgba(255, 255, 255, 1);">�Ծ�
										��û�� �ۼ��� �����ּ���<span
										style="font-family: 'Arial'; font-weight: 700; font-size: 1.714em; color: rgba(255, 255, 255, 1);">.
									</span>
								</p>
								<p
									style="margin: 1.43em 0em 0em 0em; line-height: 1.76056338028169;">
									<span style="color: rgba(255, 255, 255, 1);">���� �Ծ� ��Ī
										���α׷� ��ǥ�� ��ȣ�� �����鿡�� ��� �Բ� �� �� �ִ� ������ ã���ִ� ���Դϴ�. �ѹ� ��ó�� ����
										���̵��̱⿡ �� ��ó�� ���Ҿ��ְ� ���� ����� �� ���ִ� ������ ã���ֱ⿡ ���Ǽ��� �Ĳ��� �����ð� ������ ����
										��Ź�帮�ڽ��ϴ�. </span>
								</p>
								<p
									style="margin: 1.43em 0em 0em 0em; line-height: 1.76056338028169;">
									<span><a HREF="Contact.jsp" target="_self"
										class="btn btn-lg btn-primary">������ �ۼ�</a></span>
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
										style="font-family: 'Arial'; font-weight: 700; font-size: 1.714em; color: rgba(52, 52, 52, 1);">��
										���� ������ <br> ��������
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
										class="btn btn-md btn-default">��ü����</a></span>
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
						id="ttr_footer_designed_by" style="font-size : 15px"> Designed by ������ ��öȭ ����ȯ ������ �̸�
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
