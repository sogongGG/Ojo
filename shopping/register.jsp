<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<%@ include file = "sqllogininfo.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>소공 5조-강산,치종,정훈</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="동국대학교 소프트웨어공학 지역기반 온라인 홈쿡 사이트" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<link rel="icon" type="image/png"  href="/images/sg.ico"/>

<link href="css/bootstrap.css?ver=2" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css?ver=2" rel="stylesheet" type="text/css" media="all" />

<link href="css/font-awesome.css" rel="stylesheet" type="text/css" media="all" />


<script src="js/jquery-1.11.1.min.js"></script>

<link href='//fonts.googleapis.com/css?family=Ubuntu:400,300,300italic,400italic,500,500italic,700,700italic' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>

<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>

</head>

<script src = "http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src = "js/findaddress.js" language = "javascript">openDaumPostcode();</script>

<body>

	<div class="agileits_header">
		<div class="w3l_offers" style="padding: 8px;">
			<a href="index.jsp">5조 쇼핑몰</a>
		</div>
		<div class="w3l_search" style="margin-top: 10px;">
			<form action="#" method="post" onsubmit="return keyword_check()">
        <input type="text" name="searchKey" value="물품 검색" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '물품 검색';}" required="">
        <input type="hidden" name="latitude_post" >
        <input type="hidden" name="longitude_post">
        <input type="submit" value=" ">
			</form>
		</div>
    <div class="product_list_header" style="padding: 6px, 2em, 6px 4px; margin-top: 10px;">
      <form action="#" method="post" class="last">
                <fieldset>
                  <input type="hidden" name="cmd" value="_cart" />
                  <input type="hidden" name="display" value="1" />
                  <input type="submit" name="submit" value="장바구니 보기" class="button" />
                </fieldset>
            </form>
		</div>


    <%
			String sessionid = (String)session.getAttribute("sessionid");
			if(sessionid == null || sessionid.equals("")){%>
			<div class="form">
   			<fieldset>
				<form action='#' method="post">
				<div class ="indexlogin"><a href="login.jsp">Login</a></div>
				</form>
      		</fieldset>
		</div>
    <%
    }else{%>
    <div></div>
    <form action = "logout.jsp" method = "post">
    <div style="padding-top: 20px;">
      <ul>
        <li style="display: inline-block; padding-right: 25px;  padding-left: 25px;"><%=sessionid %>님 환영합니다.</li>
        <li style="display: inline-block; padding-right: 25px;">
          <i class="fa fa-user" aria-hidden="true"> </i>
          <a href="My_Page.jsp">MyPage</a>
        </li>
        <li style="display: inline-block; padding-right: 25px;">
          <input type="submit" value = "로그아웃"><a href="erdiagram.jsp">ERD</a>
        </li>
    </div>
    </form>
  <%}%>


		<div class="clearfix"> </div>
	</div>

	<script>
	$(document).ready(function() {
		 var navoffeset=$(".agileits_header").offset().top;
		 $(window).scroll(function(){
			var scrollpos=$(window).scrollTop();
			if(scrollpos >=navoffeset){
				$(".agileits_header").addClass("fixed");
			}else{
				$(".agileits_header").removeClass("fixed");
			}
		 });

	});
	</script>

	<div class="logo_products">
		<div class="container">
			<div class="w3ls_logo_products_left">
				<h1><a href="index.jsp"><span>Grocery</span> Store</a></h1>
			</div>
			<div class="w3ls_logo_products_left1">
				<ul class="special_items">
					<li><a href="search-integrate.jsp">Events</a><i>/</i></li>
					<li><a href="search-integrate.jsp">About Us</a><i>/</i></li>
					<li><a href="search-integrate.jsp">Best Deals</a><i>/</i></li>
					<li><a href="search-integrate.jsp">Services</a></li>
				</ul>
			</div>
			<div class="w3ls_logo_products_left1">
				<ul class="phone_email">
					<li><i class="fa fa-phone" aria-hidden="true"></i>(+0123) 234 567</li>
					<li><a href="https://cse.dongguk.edu/">문의사항</a></li>
				</ul>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>

	<div class="products-breadcrumb">
		<div class="container">
			<ul>
				<li><i class="fa fa-home" aria-hidden="true"></i><a href="index.jsp">Home</a><span>|</span></li>
				<li>Sign In & Sign Up</li>
			</ul>
		</div>
	</div>

	<div class="banner">
		<div class="w3l_banner_nav_left">
		<nav class="navbar nav_bottom">

			  <div class="navbar-header nav_2">
				  <button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				  </button>
			   </div>

				<div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
					<ul class="nav navbar-nav nav_1">
						<li><a href="products.jsp">Branded Foods</a></li>
						<li><a href="household.jsp">Households</a></li>
						<li class="dropdown mega-dropdown active">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">Veggies & Fruits<span class="caret"></span></a>
							<div class="dropdown-menu mega-dropdown-menu w3ls_vegetables_menu">
								<div class="w3ls_vegetables">
									<ul>
										<li><a href="vegetables.jsp">Vegetables</a></li>
										<li><a href="vegetables.jsp">Fruits</a></li>
									</ul>
								</div>
							</div>
						</li>
						<li><a href="kitchen.jsp">Kitchen</a></li>
						<li><a href="short-codes.jsp">Short Codes</a></li>
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">Beverages<span class="caret"></span></a>
							<div class="dropdown-menu mega-dropdown-menu w3ls_vegetables_menu">
								<div class="w3ls_vegetables">
									<ul>
										<li><a href="drinks.jsp">Soft Drinks</a></li>
										<li><a href="drinks.jsp">Juices</a></li>
									</ul>
								</div>
							</div>
						</li>
						<li><a href="pet.jsp">Pet Food</a></li>
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">Frozen Foods<span class="caret"></span></a>
							<div class="dropdown-menu mega-dropdown-menu w3ls_vegetables_menu">
								<div class="w3ls_vegetables">
									<ul>
										<li><a href="frozen.jsp">Frozen Snacks</a></li>
										<li><a href="frozen.jsp">Frozen Nonveg</a></li>
									</ul>
								</div>
							</div>
						</li>
						<li><a href="bread.jsp">Bread & Bakery</a></li>
					</ul>
				 </div>
			</nav>
		</div>
		<div class="w3l_banner_nav_right">
<%
request.setCharacterEncoding("euc-kr");

String ID=request.getParameter("ID");
String Password=request.getParameter("Password");
String Lastname=request.getParameter("Lastname");
String Firstname=request.getParameter("Firstname");
String year=request.getParameter("year");
String month=request.getParameter("month");
String day=request.getParameter("day");
String Phone=request.getParameter("Phonenum");
String Email=request.getParameter("Email");

String Home=request.getParameter("Homenum");
int Homenum = Integer.parseInt(Home);
int Phonenum = Integer.parseInt(Phone);
String Postnum = request.getParameter("post1") + request.getParameter("post2");
String addr1=request.getParameter("addr1");
String addr2=request.getParameter("addr2");
String addr3=request.getParameter("addr3");

//String q1="insert into info values('"+code+"','"+irum+"','"+cellphone+"')";

String q1="insert into User values(?,?,?,?,?,?,?,?,?)";

//Statement st=myconn.createStatement();

PreparedStatement usertb=myconn.prepareStatement(q1);
usertb.setString(1, ID);
usertb.setString(2, Password);
usertb.setString(3, Lastname);
usertb.setString(4, Firstname);
usertb.setInt(5, Phonenum);
usertb.setString(6, Email);
usertb.setString(7, day);
usertb.setString(8, month);
usertb.setString(9, year);
//st.executeUpdate(q1);
usertb.executeUpdate();

String q2="insert into Destination values(?,?,?,?,?,?)";
PreparedStatement destinationtb=myconn.prepareStatement(q2);
destinationtb.setString(1, ID);
destinationtb.setInt(2, Homenum);
destinationtb.setString(3, Postnum);
destinationtb.setString(4, addr1);
destinationtb.setString(5, addr2);
destinationtb.setString(6, addr3);
destinationtb.executeUpdate();


%>
<script>
location.href="index.jsp";
</script>
		</div>
		<div class="clearfix"></div>
	</div>

	<div class="newsletter-top-serv-btm">
		<div class="container">
			<div class="col-md-4 wthree_news_top_serv_btm_grid">
				<div class="wthree_news_top_serv_btm_grid_icon">
					<i class="fa fa-shopping-cart" aria-hidden="true"></i>
				</div>
				<h3>Nam libero tempore</h3>
				<p>Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus
					saepe eveniet ut et voluptates repudiandae sint et.</p>
			</div>
			<div class="col-md-4 wthree_news_top_serv_btm_grid">
				<div class="wthree_news_top_serv_btm_grid_icon">
					<i class="fa fa-bar-chart" aria-hidden="true"></i>
				</div>
				<h3>officiis debitis aut rerum</h3>
				<p>Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus
					saepe eveniet ut et voluptates repudiandae sint et.</p>
			</div>
			<div class="col-md-4 wthree_news_top_serv_btm_grid">
				<div class="wthree_news_top_serv_btm_grid_icon">
					<i class="fa fa-truck" aria-hidden="true"></i>
				</div>
				<h3>eveniet ut et voluptates</h3>
				<p>Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus
					saepe eveniet ut et voluptates repudiandae sint et.</p>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>

	<div class="newsletter">
		<div class="container">
			<div class="w3agile_newsletter_left">
				<h3>sign up for our newsletter</h3>
			</div>
			<div class="w3agile_newsletter_right">
				<form action="#" method="post">
					<input type="email" name="Email" value="Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}" required="">
					<input type="submit" value="subscribe now">
				</form>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>

	<div class="footer">
		<div class="container">
			<div class="col-md-3 w3_footer_grid">
				<h3>information</h3>
				<ul class="w3_footer_grid_list">
					<li><a href="events.jsp">Events</a></li>
					<li><a href="about.jsp">About Us</a></li>
					<li><a href="products.jsp">Best Deals</a></li>
					<li><a href="services.jsp">Services</a></li>
					<li><a href="short-codes.jsp">Short Codes</a></li>
				</ul>
			</div>
			<div class="col-md-3 w3_footer_grid">
				<h3>policy info</h3>
				<ul class="w3_footer_grid_list">
					<li><a href="faqs.jsp">FAQ</a></li>
					<li><a href="privacy.jsp">privacy policy</a></li>
					<li><a href="privacy.jsp">terms of use</a></li>
				</ul>
			</div>
			<div class="col-md-3 w3_footer_grid">
				<h3>what in stores</h3>
				<ul class="w3_footer_grid_list">
					<li><a href="pet.jsp">Pet Food</a></li>
					<li><a href="frozen.jsp">Frozen Snacks</a></li>
					<li><a href="kitchen.jsp">Kitchen</a></li>
					<li><a href="products.jsp">Branded Foods</a></li>
					<li><a href="household.jsp">Households</a></li>
				</ul>
			</div>
			<div class="col-md-3 w3_footer_grid">
				<h3>twitter posts</h3>
				<ul class="w3_footer_grid_list1">
					<li><label class="fa fa-twitter" aria-hidden="true"></label><i>01 day ago</i><span>Non numquam <a href="#">http://sd.ds/13jklf#</a>
						eius modi tempora incidunt ut labore et
						<a href="#">http://sd.ds/1389kjklf#</a>quo nulla.</span></li>
					<li><label class="fa fa-twitter" aria-hidden="true"></label><i>02 day ago</i><span>Con numquam <a href="#">http://fd.uf/56hfg#</a>
						eius modi tempora incidunt ut labore et
						<a href="#">http://fd.uf/56hfg#</a>quo nulla.</span></li>
				</ul>
			</div>
			<div class="clearfix"> </div>
			<div class="agile_footer_grids">
				<div class="col-md-3 w3_footer_grid agile_footer_grids_w3_footer">
					<div class="w3_footer_grid_bottom">
						<h4>100% secure payments</h4>
						<img src="images/card.png" alt=" " class="img-responsive" />
					</div>
				</div>
				<div class="col-md-3 w3_footer_grid agile_footer_grids_w3_footer">
					<div class="w3_footer_grid_bottom">
						<h5>connect with us</h5>
						<ul class="agileits_social_icons">
							<li><a href="#" class="facebook"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
							<li><a href="#" class="twitter"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
							<li><a href="#" class="google"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
							<li><a href="#" class="instagram"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
							<li><a href="#" class="dribbble"><i class="fa fa-dribbble" aria-hidden="true"></i></a></li>
						</ul>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="wthree_footer_copy">
				<p>© 2016 Grocery Store. All rights reserved | Design by <a href="http://w3layouts.com/">W3layouts</a></p>
			</div>
		</div>
	</div>

<script src="js/bootstrap.min.js"></script>
<script>
$(document).ready(function(){
    $(".dropdown").hover(
        function() {
            $('.dropdown-menu', this).stop( true, true ).slideDown("fast");
            $(this).toggleClass('open');
        },
        function() {
            $('.dropdown-menu', this).stop( true, true ).slideUp("fast");
            $(this).toggleClass('open');
        }
    );
});
</script>

	<script type="text/javascript">
		$(document).ready(function() {


			$().UItoTop({ easingType: 'easeOutQuart' });

			});
	</script>

<script src="js/minicart.js?version=1" charset="utf-8"></script>
<script>
		paypal.minicart.render();

		paypal.minicart.cart.on('checkout', function (evt) {
			var items = this.items(),
				len = items.length,
				total = 0,
				i;

			// Count the number of each item in the cart
			for (i = 0; i < len; i++) {
				total += items[i].get('quantity');
			}

			if (total < 3) {
				alert('The minimum order quantity is 3. Please add more to your shopping cart before checking out');
				evt.preventDefault();
			}
		});

	</script>
</body>
</html>
