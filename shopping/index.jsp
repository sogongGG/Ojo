<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>

<html>
<head>
<title>소공 5조-강산,치종,정훈</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="동국대학교 소프트웨어공학 지역기반 온라인 홈쿡 사이트" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<link rel="icon" type="image/png"  href="/images/sg.ico"/>

<link href="css/bootstrap.css?ver=1" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css?ver=1" rel="stylesheet" type="text/css" media="all" />

<link href="css/font-awesome.css" rel="stylesheet" type="text/css" media="all" />


<script src="js/jquery-1.11.1.min.js"></script>

<link href='//fonts.googleapis.com/css?family=Ubuntu:400,300,300italic,400italic,500,500italic,700,700italic' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>

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

</head>

<body>

	<div class="agileits_header">
		<div class="w3l_offers" style="margin-top: 8px;">
			<a href="index.jsp">5조 쇼핑몰</a>
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
		<!--  복붙할 구간 *************************************************************************************** -->



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
					<li><a href="search-integrate.jsp">모든 상품</a><i>/</i></li>
					<li><a href="search-integrate.jsp">요리</a><i>/</i></li>
					<li><a href="search-integrate.jsp">재료</a><i>/</i></li>
					<li><a href="search-integrate.jsp">마트</a></li>
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


				<ul class="phone_email">
          <a class="btn" href="#">
					<li><i class="fa fa-map-marker" aria-hidden="true" id="now_location" onclick="getLocation()">&nbsp;&nbsp;&nbsp;현재위치 확인</i></li></a>
					<li><a href="https://cse.dongguk.edu/">문의하기</a></li>
				</ul>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>

	<div class="banner" style="height: 500px;">
		<div class="w3l_banner_nav_center">
			<section class="slider">
				<div class="flexslider">
					<ul class="slides">
						<li>
							<div class="w3l_banner_nav_right_banner">
								<h3>직접 요리하시는건<span>어떠신가요?</span></h3>
							</div>
						</li>
					</ul>
				</div>
			</section>

				<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" property="" />
				<script defer src="js/jquery.flexslider.js"></script>
				<script type="text/javascript">
				$(window).load(function(){
				  $('.flexslider').flexslider({
					animation: "slide",
					start: function(slider){
					  $('body').removeClass('loading');
					}
				  });
				});
			  </script>

		</div>
		<div class="clearfix"></div>
	</div>

	<div class="agileits_team_grids" style="padding-bottom: 1em; padding-top: 50px; background: #7e7e7eb3; margin-top:0px;">
		<h4> 5조 구성원 </h4>
		<div class="col-md-4 agileits_team_grid">
					<img src="images/32.jpg" alt=" " class="img-responsive">
					<h4>김강산</h4>
					<p>팀장</p>

				</div>
				<div class="col-md-4 agileits_team_grid">
					<img src="images/33.jpg" alt=" " class="img-responsive">
					<h4>이치종</h4>
					<p>팀원1</p>

				</div>
				<div class="col-md-4 agileits_team_grid">
					<img src="images/34.jpg" alt=" " class="img-responsive">
					<h4>박정훈</h4>
					<p>팀원2</p>

				</div>
			<div class="clearfix"> </div>
	</div>

  <script>
    document.getElementsByName("latitude_post")[0].value = 37.5575367;
    document.getElementsByName("longitude_post")[0].value = 127.0007751;

    </script>

    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA8pFXpSHYIpak8pbU4x-ntfmvRnaemTHo&callback=initMap">
    </script>

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
