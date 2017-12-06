<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<%@ include file = "sqllogininfo.jsp" %>
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
<link href="css/bootstrap.css?ver=1" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css?ver=1" rel="stylesheet" type="text/css" media="all" />
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
<script type="text/javascript"> var google_apikey="AIzaSyA8pFXpSHYIpak8pbU4x-ntfmvRnaemTHo"</script>
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

<body>
<!-- header -->
	<div class="agileits_header">
		<div class="w3l_offers" style="margin-top: 8px;">
			<a href="products.jsp">5조 쇼핑몰</a>
		</div>
		<div class="w3l_search" style="margin-top: 10px;">
      <form action="search-integrate.jsp" method="post" onsubmit="return initMap2()">
        <input type="text" name="searchKey" value="물품 검색" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '물품 검색';}" required="">
        <input type="hidden" name="latitude_post" >
        <input type="hidden" name="longitude_post" >
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

		<!--  복붙할 구간 *************************************************************************************** -->

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
          <input type="submit" value = "로그아웃">
        </li>
    </div>
    </form>
  <%}%>
		<!--  복붙할 구간 *************************************************************************************** -->



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
	<div class="logo_products" style="padding-top: 80px;">
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
					<li><a href="http://cse.dongguk.edu">문의사항</a></li>
				</ul>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
<!-- //header -->
<!-- banner -->
<script language="javascript">
  var str;
	function btn_click(str){
		if(str =="modify"){
			userbutton.action = "usermodify.jsp";
		}
		else if(str == "deleteuser"){
			userbutton.action = "userdelete.jsp";
		}
  }
</script>
<%
String searchKey = sessionid;
Statement stmt = myconn.createStatement();
String search = "select * from user where ID ='"+searchKey+"';";
ResultSet rs = stmt.executeQuery(search);
if(rs.next()){

}
%>
	<div class="grid_mypage" style="padding-bottom: 10px; margin-top:0px;">
		<p class = "title"> 나의 페이지</p>
    <div class="mypagebacksquare">
      <div class="myinfo">
        <p class="myinfop">
          나의 정보
          <a href="index.jsp"  style="float: right;"> <input type="submit" value="로그인 화면으로 이동" style="margin-top: 10px;"> </a>
        </p>
      </div>
      <div class="mypagemain">
        <form name = "userbutton" id="update" style="margin-bottom: 5px;">
        <table border="0" width="600px">
            <tr>
              <td align="center">아이디</td>
              <td> <input name="userId" value="<%=rs.getString(1) %>" style="width: 40%; margin-bottom: 10px;"> </td>
            </tr>
            <tr>
              <td align="center">암호</td>
              <td> <input name="userPWD" value="<%=rs.getString(2) %>" style="width: 40%; margin-bottom: 10px;"> </td>
            </tr>
            <tr>
              <td align="center">성</td>
              <td> <input name="userFName" value="<%=rs.getString(3) %>" style="width: 25%; margin-bottom: 10px;"> </td>
            </tr>
            <tr>
              <td align="center">이름</td>
              <td> <input name="userLName" value="<%=rs.getString(4) %>" style="width: 25%; margin-bottom: 10px;"> </td>
            </tr>
            <tr>
              <td align="center">전화번호</td>
              <td> <input name="userPhoneNum" value="<%=rs.getString(5) %>" style="width: 50%; margin-bottom: 10px;"> </td>
            </tr>
            <tr>
              <td align="center">이메일</td>
              <td> <input name="userEmail" value="<%=rs.getString(6) %>" style="width: 50%; margin-bottom: 10px;"> </td>
             </tr>
             <tr>
               <td align="center">생일</td>
               <td> <input name="userBirthDay" value="<%=rs.getString(7) %>" style="width: 25%; margin-bottom: 10px;"> </td>
             </tr>
             <tr>
               <td align="center">생월</td>
               <td> <input name="userBirthMonth" value="<%=rs.getString(8) %>" style="width: 25%; margin-bottom: 10px;"> </td>
             </tr>
             <tr>
               <td align="center">생년</td>
               <td> <input name="userBirthYear" value="<%=rs.getString(9) %>" style="width: 25%; margin-bottom: 10px;"> </td>
             </tr>
        </table>
          <button type="submit" onclick="btn_click('modify');">회원정보수정</button>
          <button type="submit" onclick="btn_click('deleteuser');">회원탈퇴</button>
        </form>
      </div>
    </div>
	</div>

  <script>
  document.getElementsByName("latitude_post")[0].value = 37.5575367;
  document.getElementsByName("longitude_post")[0].value = 127.0007751;
  </script>

  <script async defer
  src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA8pFXpSHYIpak8pbU4x-ntfmvRnaemTHo&callback=initMap">
  </script>
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
<script src="js/minicart.js"></script>
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
