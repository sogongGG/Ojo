<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>소공 5조-강산,치종,정훈</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="동국대학교 소프트웨어공학 지역기반 온라인 홈쿡 사이트" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<link rel="icon" type="image/png"  href="/images/sg.ico"/>
<!-- //for-mobile-apps -->
<link href="css/bootstrap.css?ver=2" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css?ver=2" rel="stylesheet" type="text/css" media="all" />
<!-- font-awesome icons -->
<link href="css/font-awesome.css" rel="stylesheet" type="text/css" media="all" />
<!-- //font-awesome icons -->
<!-- js -->
<script src="js/jquery-1.11.1.min.js"></script>
<!-- //js -->
<link href='//fonts.googleapis.com/css?family=Ubuntu:400,300,300italic,400italic,500,500italic,700,700italic' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<!-- start-smoth-scrolling -->
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
<!-- start-smoth-scrolling -->
</head>
<script type="text/javascript"> var google_apikey="AIzaSyA8pFXpSHYIpak8pbU4x-ntfmvRnaemTHo"</script>
<script src = "http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src = "js/findaddress.js" language = "javascript">openDaumPostcode();</script>
<script type = "text/javascript">
var xhr = null;

function getXHR(){
	if(window.XMLHttpRequest){
		return new XMLHttpRequest();
	}
	else
	{
		return new ActiveXObjcet("Microsoft.XMLHTTP");
	}
}
function idCheck(){
	xhr=getXHR();
	xhr.onreadystatechange=getResult;
	var ID=document.getElementById("ID").value;
	xhr.open("get","idcheck.jsp?id="+ID, true);
	xhr.send(null);
}
function getResult(){
	if(xhr.readyState == 4 && xhr.status==200){
		var xml=xhr.responseXML;
		var re=xml.getElementsByTagName("result")[0].firstChile.nodeValue;

		if(re=='true'){
			document.getElementById("idcheck").innerHTML="이미 사용중인 아이디입니다.";
		}else{
			document.getElementById("idcheck").innerHTML="사용 가능한 아이디입니다.";
		}
	}
}
</script>
<body>
<!-- header -->
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
			String sessionid = "";
			sessionid = (String)session.getAttribute("sessionid");
			if(sessionid == null || sessionid.equals("")){%>
			<div class="form">
   			<fieldset>
				<form action='#' method="post">
				<div class ="indexlogin"><a href="login.jsp">Login</a>
				</div>
				</form>
      		</fieldset>
		</div>
	    <%
			}else{%>
			<div><%=sessionid %>님 환영합니다.</div>
			<form action = "logout.jsp" method = "post">
			<div><input type="submit" value = "로그아웃" ></div>
			</form>
		<%}%>





		<div class="clearfix"> </div>
	</div>
<!-- script-for sticky-nav -->
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
<!-- //script-for sticky-nav -->
	<div class="logo_products">
		<div class="container">
			<div class="w3ls_logo_products_left">
        <h1>
          <a href="index.jsp"><img src="./images/oOo.gif" alt="O o O"
            height="120" width="250" class="img-responsive img-circle" ></a>
        </h1>
			</div>
			<div class="w3ls_logo_products_left1">
        <ul class="special_items">
					<li><a href="events.jsp">모든 상품</a><i>/</i></li>
					<li><a href="about.jsp">요리</a><i>/</i></li>
					<li><a href="products.jsp">재료</a><i>/</i></li>
					<li><a href="services.jsp">마트</a></li>
				</ul>
			</div>
      <div class="w3ls_logo_products_left1">
        <!-- 역 지오 코딩-->

          <script type="text/javascript" charset="utf-8">
        /*
          navigator.geolocation.getCurrentPosition(
          function initMap(position) {
              console.log('location load');
            var uluru = {lat: position.coords.latitude, lng:position.coords.longitude};
            var geocoder = new google.maps.Geocoder;
            geocodeLatLng(geocoder,uluru);
          });
          */
          function initMap() {
        }
          function getLocation() {
            if (navigator.geolocation) {
              navigator.geolocation.getCurrentPosition(onSuccess, onError);
            }
          }
          function onError(error) {
            alert('code: '    + error.code    + '\n' +
            'message: ' + error.message + '\n');
        }
          function onSuccess(position) {
            var uluru = {lat: position.coords.latitude, lng:position.coords.longitude};
            var geocoder = new google.maps.Geocoder;
           geocodeLatLng(geocoder,uluru);
        }
          function geocodeLatLng(geocoder,uluru) {
            var latlng = uluru;
            geocoder.geocode({'location': latlng}, function(results, status) {
              if (status === 'OK') {
                if (results[1]) {
                  document.getElementById("now_location").innerHTML =" "+ results[1].formatted_address;
                } else {
                  document.getElementById("now_location").innerHTML = "위치를 찾을수 없습니다.";
                }
              } else {
                document.getElementById("now_location").innerHTML ="위치확인이 불가합니다.";
              }
            });
          }
        </script>
        <script async defer
        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA8pFXpSHYIpak8pbU4x-ntfmvRnaemTHo&callback=initMap">
        </script>

        <!-- -->
				<ul class="phone_email">
          <a class="btn" href="#">
					<li><i class="fa fa-map-marker" aria-hidden="true" id="now_location" onclick="getLocation()">&nbsp;&nbsp;&nbsp;현재위치 확인</i></li></a>
					<li><a href="https://cse.dongguk.edu/">문의사항</a></li>
				</ul>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
<!-- //header -->
<!-- products-breadcrumb -->
<!-- //products-breadcrumb -->
<!-- banner -->
	<div class="banner">

		<div class="w3l_banner_nav_right">
<!-- login -->
		<div class="w3_login">
			<h3>Sign In &amp; Sign Up</h3>
			<div class="w3_login_module">
				<div class="module form-module">
				  <div class="toggle"><i class="fa fa-times fa-pencil" style="margin-top: 10px;"></i>
					<div class="tooltip">Click Me</div>
				  </div>
				  <div class="form" style="display: block;">
					<h2>Login to your account</h2>
					<form name = "LoginWindow" action="verify.jsp" method="post">
					  <input type="text" id = "LoginUsername" name="LoginUsername" placeholder="Username" required=" ">
					  <input type="password" id = "LoginPassword" name="LoginPassword" placeholder="Password" required=" ">
					  <input type="submit" value="Login">
					</form>
				  </div>
				  <div class="form" style="display: none;">
					<h2>회원가입을 환영합니다!</h2>
					<form name = "registerUser" action="register.jsp" method="post">
					<h2>아이디</h2>
					  <input type="text" name="ID" id="ID" placeholder="*회원ID" required=" " onkeyup="idCheck()">
					  <span id="idcheck"></span><br>
					  <h2>비밀번호</h2>
					  <input type="password" name="Password" id="Password" placeholder="*비밀번호" required=" ">
					  <input type="password" name="twicePassword" id="twicepassword" placeholder="*비밀번호확인" required=" "><br>
					  <h2> 이름</h2>
					   <input type="text" name="Lastname" id="Lastname" placeholder="*성" required=" ">
					  <input type="text" name="Firstname" id="Firstname" placeholder="*이름" required=" "><br>
					  <h2> 생년월일을 입력하세요</h2>
					  <select name="year" id="year">
					  <%for(int year = 1980; year <= 2017; year++){ %>
					  <option value="<%=year%>"> <%=year %> </option>
					  <%} %>
					  </select>년
					   <select name="month" id="month">
					  <%for(int month = 1; month <= 12; month++){ %>
					  <option value="<%=month%>"> <%=month %> </option>
					  <%} %>
					  </select>일
					  <select name="day" id="day">
					  <%for(int day = 1; day <= 31; day++){ %>
					  <option value="<%=day%>"> <%=day %> </option>
					  <%} %>
					  </select>일<br><br>
					  <h2> 이메일 </h2>
					  <input type="email" name="Email" id="Email" placeholder="Email" required=" "><br>
					  <h2> 전화번호 </h2>
					  <input type="text" name="Homenum" id="Homenum" placeholder="*집전화번호(-제외)" required=" ">
					  <input type="password" name="Phonenum" id="Phonenum" placeholder="*휴대전화번호(-제외)" required=" "><br>
					  <h2> 배송지 </h2>
					  <input id="post1" readonly="" size="5" name="post1" required=" "> - <input id="post2" readonly="" size="5" name="post2" required=" ">
					  <input class = "findpostnum" type="button" value="우편번호찾기" onclick="openDaumPostcode();" required=" "><br>
					  <input id="addr1" border-color = "gray" readonly="" size="31" name="addr1" placeholder="*도로명주소" required=" ">
					  <input id="addr2" readonly="" size="31" name="addr2" placeholder="*지번주소" required=" ">
					  <input id="addr3" size="31" name="addr3" placeholder="*상세주소" required=" ">
					  <input type="submit" value="Register">
					</form>
				  </div>
				  <div class="cta"><a href="#">아이디가 없으세요?<br>회원가입으로</a></div>
				  <div class="cta"><a href="#">비밀번호를 잊으셨나요?</a></div>
				</div>
			</div>
			<script>
				$('.toggle').click(function(){
				  // Switches the Icon
				  $(this).children('i').toggleClass('fa-pencil');
				  // Switches the forms
				  $('.form').animate({
					height: "toggle",
					'padding-top': 'toggle',
					'padding-bottom': 'toggle',
					opacity: "toggle"
				  }, "slow");
				});
			</script>
		</div>
<!-- //login -->
		</div>
		<div class="clearfix"></div>
	</div>

<!-- //footer -->
<!-- Bootstrap Core JavaScript -->
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
<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear'
				};
			*/

			$().UItoTop({ easingType: 'easeOutQuart' });

			});
	</script>
<!-- //here ends scrolling icon -->
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
