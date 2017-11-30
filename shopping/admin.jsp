<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
    <%@ page import = "java.sql.*" %>
<!--
author: W3layouts
author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
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
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>

<script type="text/javascript">
$(function(){ //전체선택 체크박스 클릭
	$("#allCheck").click(function(){ //만약 전체 선택 체크박스가 체크된상태일경우
		if($("#allCheck").prop("checked"))
		{ //해당화면에 전체 checkbox들을 체크해준다
			$("input[type=checkbox]").prop("checked",true); // 전체선택 체크박스가 해제된 경우
		}
		else{ //해당화면에 모든 checkbox들의 체크를해제시킨다.
			$("input[type=checkbox]").prop("checked",false);
		}
	})
})
</script>
<!-- start-smoth-scrolling -->
</head>

<script src = "http://code.jquery.com/jquery-1.10.1.js"></script>

<body>
<%
	String sessionid = "";
	sessionid = (String)session.getAttribute("sessionid");
	request.setCharacterEncoding("euc-kr");

	Class.forName("com.mysql.jdbc.Driver");
	Connection myconn=null;
	myconn = DriverManager.getConnection("jdbc:mysql://localhost:3306/shoppingmall","root","ks01");
	String name = "select * from administrator where ID =?";

	PreparedStatement pst=myconn.prepareStatement(name);
	pst.setString(1, sessionid);
	ResultSet rs=pst.executeQuery();

	if(!rs.next()){%>
		<script>
		alert('권한이 없습니다.');
		window.history.back();
		</script>
	<%}
	else{
		%>
		<script>
		alert('관리자님 안녕하세요.');
		</script>
	<%
	}
%>
<!-- header -->
	<div class="agileits_header">
		<div class="w3l_offers" style="margin-top: 8px;">
			<a href="products.jsp">5조 쇼핑몰</a>
		</div>
		<div class="w3l_search" style="margin-top: 10px;">
			<form action="#" method="post">
				<input type="text" name="Product" value="물품 검색" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search a product...';}" required="">
				<input type="submit" value=" ">
			</form>
		</div>
		<div class="product_list_header" style="padding: 6px, 2em, 6px 4px; margin-top: 10px;">
			<form action="#" method="post" class="last">
                <fieldset>
                    <input type="submit" name="submit" value="장바구니 보기" class="button" />
                </fieldset>
            </form>
		</div>

		<%

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
        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAoJWfF7bE_v8AWgcksE52yTbQFoJ6jBPI&callback=initMap">
        </script>

        <!-- -->
				<ul class="phone_email">
          <a class="btn" href="#">
					<li><i class="fa fa-map-marker" aria-hidden="true" id="now_location" onclick="getLocation()">&nbsp;&nbsp;&nbsp;현재위치 확인</i></li></a>
					<li><i class="fa fa-envelope-o" aria-hidden="true"></i><a href="mailto:store@grocery.com">store@grocery.com</a></li>
				</ul>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
<!-- //header -->
<!-- banner -->



<!-- banner -->
	<div class="administrator">
		<h4>관리자 페이지 입니다!</h4>
		<div id="container">

			<script>
			$("snip1535.hover").mouseleave(function() {
   				 $(this).removeClass("hover");
  					}
			);
			</script>
			<script>
	$(document).ready(function() {
    	$(".tab_content").hide();
    	$(".tab_content:first").show();

    	$("ul.tabs li").click(
    	function (){
        	$("ul.tabs li").removeClass("active").css("color", "#333");
        	$(this).addClass("active").css("color", "darkred");
        	$(".tab_content").hide();
       		var activeTab = $(this).attr("rel");
        	$("#" + activeTab).fadeIn()
    	});
	});
</script>
			<div class = "adminbuttonset1">
            <button type="submit" class="snip1535">불러오기</button>
			<button type="submit" class="snip1535" onclick="add_row()">추가</button>
			<button type="submit" class="snip1535">수정</button>
			<button type="submit" class="snip1535" onclick="delete_row()">삭제</button>
			</div>
		<script>
		function add_row() {
				var table = document.getElementById('tab1_tbody');
    			var row = table.insertRow( table.rows.length ); // 하단에 추가
    			var cell1 = row.insertCell(0); cell1.innerHTML='<input type="checkbox"/>'
    			var cell2 = row.insertCell(1);
    			var cell3 = row.insertCell(2);
   			 	var cell4 = row.insertCell(3);
    			var cell5 = row.insertCell(4);
    			var cell6 = row.insertCell(5);
    			var cell7 = row.insertCell(6);
  		}
 		function delete_row() {
    		var table = document.getElementById('tab1_tbody');
    		if (table.rows.length < 1) return;
    		table.deleteRow( table.rows.length-1 ); // 하단부터 삭제
  		}
		</script>
    		<ul class="tabs">
        	<li class="active" rel="tab1">요리</li>
        	<li rel="tab2">재료</li>
        	<li rel="tab3">마트</li>
   			</ul>
    			<div class="tab_container">
        			<div id="tab1" class="tab_content">
            			<table class = "type09">
            				<thead>
            				<tr>
            					<th> <input type="checkbox" id="allCheck"/>전체선택 </th>
            					<th>사진 링크</th>
            					<th>Name</th>
            					<th>필요 재료</th>
            					<th>평균 가격</th>
            					<th>보관법</th>
            					<th>손질</th>
            				</tr>
            				</thead>
            				<tbody id = "tab1_tbody">
            				<tr>
            					<td> <input type="checkbox"/> </td>
            					<td></td>
            					<td></td>
            					<td></td>
            					<td></td>
            					<td></td>
            					<td></td>
            				</tr>
            				</tbody>
            			</table>
        			</div>
        <!-- #tab1 -->
        			<div id="tab2" class="tab_content">
        			<table class = "type09">
            				<thead>
            				<tr>
            					<th> <input type="checkbox" id="allCheck"/>전체선택 </th>
            					<th>요리 사진 링크</th>
            					<th>요리 이름</th>
            					<th>평점</th>
            					<th>요리 설명</th>
            					<th>필요한 재료 리스트</th>
            					<th></th>
            				</tr>
            				</thead>
            				<tbody  id = "tab2_tbody">
            				<tr>
            					<td> <input type="checkbox"/> </td>
            					<td></td>
            					<td></td>
            					<td></td>
            					<td></td>
            					<td></td>
            					<td></td>
            				</tr>
            				</tbody>
            			</table>
        			</div>
        			<!-- tab3 -->
        			<div id="tab3" class="tab_content">
        			<table class = "type09">
            				<thead>
            				<tr>
            					<th> <input type="checkbox" id="allCheck"/>전체선택 </th>
            					<th>마트 사진 링크</th>
            					<th>마트 전화번호</th>
            					<th>마트 주소</th>
            					<th>마트에서 구입한 리스트</th>
            					<th>세일 중인 리스트</th>
            					<th></th>
            				</tr>
            				</thead>
            				<tbody  id = "tab3_tbody">
            				<tr>
            					<td> <input type="checkbox"/> </td>
            					<td></td>
            					<td></td>
            					<td></td>
            					<td></td>
            					<td></td>
            					<td></td>
            				</tr>
            				</tbody>
            			</table>
        			</div>
        <!-- #tab3 -->
    			</div>
    	<!-- .tab_container -->
		</div>
	</div>


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
