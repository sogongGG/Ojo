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
<link href="css/bootstrap.css?ver=3" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css?ver=3" rel="stylesheet" type="text/css" media="all" />
<!-- font-awesome icons -->
<link href="css/font-awesome.css" rel="stylesheet" type="text/css" media="all" />
<!-- //font-awesome icons -->
<!-- js -->
<script src="js/jquery-1.11.1.min.js"></script>
<!-- //js -->
<link href='//fonts.googleapis.com/css?family=Ubuntu:400,300,300italic,400italic,500,500italic,700,700italic' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<!-- start-smoth-scrolling -->
<script type="text/javascript"> var google_apikey="AIzaSyA8pFXpSHYIpak8pbU4x-ntfmvRnaemTHo"</script>
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
<%
//Class.forName("com.mysql.jdbc.Driver");
//String searchKey = "testing";
//Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/shoppingmall", "root", "ks01");
//Statement stmt = conn.createStatement();
//String search = "select * from food where Genre ='"+searchKey+"';";
//ResultSet rs = stmt.executeQuery(search);
//<li><a href="services.jsp">마트</a></li>
//String testingst = "<li><a href=" + '"' + "services.jsp"+ '"' + ">Hi</a></li>";
//String test = "<li style=" + '"' + "display: inline;" + '"' + ">Hello</li>";
%>

<%
//if(rs.next()){
//  int i = 1;
//}
%>

<body>
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

  <!--  복붙할 구간 *************************************************************************************** -->

  <%
//    String sessionid = "";
//    sessionid = (String)session.getAttribute("sessionid");
//    if(sessionid == null || sessionid.equals("")){
%>
    <div class="form">
      <fieldset>
      <form action='#' method="post">
      <div class ="indexlogin"><a href="login.jsp">Login</a>
      </div>
      </form>
        </fieldset>
  </div>
  <%
  //}else{
  %>
  <div></div>
  <form action = "logout.jsp" method = "post">
  <div style="padding-top: 20px;">
    <ul>
      <li style="display: inline-block; padding-right: 25px; padding-left: 25px;"><%
      //=sessionid
       %>
      님 환영합니다.</li>
      <li style="display: inline-block; padding-right: 25px;">
        <i class="fa fa-user" aria-hidden="true"> </i>
        <a href="#">MyPage</a>
      </li>
      <li style="display: inline-block; padding-right: 25px;">
        <input type="submit" value = "로그아웃">
      </li>
  </div>
  </form>
<%//}
%>
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

        function getLocation2() {
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


      <!-- -->
      <ul class="phone_email">
        <a class="btn" href="#">
        <li><i class="fa fa-map-marker" aria-hidden="true" id="now_location" onclick="getLocation2()">&nbsp;&nbsp;&nbsp;현재위치 확인</i></li></a>
        <li><i class="fa fa-envelope-o" aria-hidden="true"></i><a href="mailto:store@grocery.com">store@grocery.com</a></li>
      </ul>
    </div>
    <div class="clearfix"> </div>
  </div>
</div>
<!-- //header -->
<!-- banner -->
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
    <!-- flexSlider -->
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
    <!-- //flexSlider -->
  </div>
  <div class="clearfix"></div>
</div>
<!-- banner -->
<div class="search">
  <div class="panel-group w3l_panel_group_faq" id="accordion" aria-multiselectable="true">
		<div class="panel panel-default">
		  <div class="panel-heading" role="tab" id="headingFour">
			  <h4 class="panel-title asd">통합검색 결과</h4>
			</div>
  		  <div class="panel-body panel_text">
          <h3 style="text-align: left;"> 혹시 이것을 찾으시나요? </h3>
          <div class="col-md-3 w3ls_w3l_banner_left w3ls_w3l_banner_left" style="padding-left: 0px; padding-right: 0px;">
  					<div class="hover14 column"></div>
  						<div class="agile_top_brand_left_grid w3l_agile_top_brand_left_grid">
							<div class="agile_top_brand_left_grid1">
								<figure>
									<div class="snipcart-item block">
										<div class="snipcart-thumb">
											<a href="single.jsp"><img src="images/64.png" alt=" " class="img-responsive"></a>
											<p> <%
                      //=rs.getString(1)
                      %> </p>
											<h4>$10.0</h4>
										</div>
										<div class="snipcart-details">
											<form action="#" method="post">
												<fieldset>
													<input type="hidden" name="cmd" value="_cart">
													<input type="hidden" name="add" value="1">
													<input type="hidden" name="business" value=" ">
													<input type="hidden" name="item_name" value="pepper salami">
													<input type="hidden" name="amount" value="10.00">
													<input type="hidden" name="discount_amount" value="1.00">
													<input type="hidden" name="currency_code" value="USD">
													<input type="hidden" name="return" value=" ">
													<input type="hidden" name="cancel_return" value=" ">
													<input type="submit" name="submit" value="Add to cart" class="button">
												</fieldset>
											</form>
										</div>
									</div>
								</figure>
							</div>
						</div>
					</div>
          <div class="col-md-3 w3ls_w3l_banner_left" style="padding-left: 0px;">
            <div class="agile_top_brand_left_grid1" style="backgroud: white;">
          	   <h3 class=title style="font-size: small;"> 요리설명 </h3>
               <p style="width: -webkit-fill-available; height: 170px; overflow: scroll;">
                 <%//=rs.getString(3)
                 %>
               </p>
               <h3 class=title style="font-size: small;"> 필요재료 </h3>

               <%
                //     String[] sArray1 = rs.getString(3).split(",");
                //     for (int i = 0; i < 5; i++){
                      // String plzs1 = "<li>" + sArray1[i] + "</li>";
                //       String plz = "<li style=" + '"' + "display: inline;" + '"' + ">" + sArray1[i] + "</li>";
                       //String plzs = "<li>" + sArray1[i] + "</li>";
                //       out.println(plz);
                //     }
               %>
          	</div>
          </div>
          <div class="col-md-3 w3ls_w31_banner_left_reviews" style="width: 20%">
            <div class="agile_top_brand_left_grid1" style="background: white;">
              <h3 class=title style="font-size: small;"> 네티즌 후기 </h3>
              <div class="list-group list-group-alternate" style="margin-bottom: 0px;">
               <%
              //    String[] sArray2 = rs.getString(3).split(",");
              //    for (int i = 0; i < 5; i++){
              //      String plz = "<a href=" + '"' + '#' + '"' + "class=" + '"' + "list-group-item" + '"' + ">" + sArray2[i] + "</a>";
            //        out.println(plz);
            //      }
               %>
              </div>
					  </div>
          </div>


          <div class="col-md-3 w3ls_w3l_banner_left" style="padding-left: 0px;">
            <h3 class=title style="font-size: small;"> 인근마트 </h3>
            <a class="btn" href="#">
              <i class="fa fa-map-marker" aria-hidden="true"
                id="now_location" onclick="getLocation()">&nbsp;&nbsp;&nbsp;현재위치로 검색하기!</i>
            </a>
            <div id="map" style="width: 120%; height:350px; background-color: grey;"> </div>

            <!-- address에 검색값 input !!!!-->
            <script>

            function initMap() {
             var map = new google.maps.Map(document.getElementById('map'), {
               zoom: 15,
               center: {lat:37.5575367,lng:127.0007751}
             });
             var geocoder = new google.maps.Geocoder();
            ////////////address에 검색값 input!!!!
             var address ="명동";
             geocodeAddress(address,geocoder, map);
            }

             function geocodeAddress(address,geocoder, resultsMap) {
             geocoder.geocode({'address': address}, function(results, status) {
                 if (status === 'OK') {
                   resultsMap.setCenter(results[0].geometry.location);
                 var input_content = '<p>'+results[0].formatted_address+'</p>';
                 makemarker("검색위치","./images/cheering_minions.gif",input_content,resultsMap,
                  results[0].geometry.location.lat(), results[0].geometry.location.lng())

                   //  qurry( resultsMap,lat(),lng()) -> makemarker

                 } else {
                 //  alert('위치검색이 안되서 "동국대"로 보여드릴게요!');
                   resultsMap.setCenter({lat:37.5575367,lng:127.0007751});
                   input_content =  '<p>학생들의 건강을 고려해 언덕에 지어졌죠.<br>'+
                                   '컴공과 학생들이 가끔 아픈건 안 비밀</p>'+
                                   'ps.아..컴공과는 엘레베이터타고 다니죠..';
                   makemarker("동국대학교","./images/dongguk.jpg",input_content,resultsMap,
                    37.5575367,127.0007751)
                 }
               });
             }

             function makemarker(head_D,img_D,content_D,resultsMap,lat_D,lng_D){
                 //resultsMap.setCenter({lat:37.5575367,lng:127.0007751});
                 var infowindow = new google.maps.InfoWindow({
                   content: '<h1><b>'+ head_D +'</b></h1>'+
                           '<img src="'+img_D+ '"alt="ㅠㅠ사진불러오기실패" height="130" width="170"><br>'+
                            "'"+content_D+"'"
                 })
               var marker = new google.maps.Marker({
                 map: resultsMap,
                 position: {lat: lat_D,lng:lng_D},
                 title : '클릭하면 더 자세한 정보를 보여드려요!'
               });
               marker.addListener('click', function() {
                 infowindow.open(map, marker);
               });
             }

             function getLocation() {
               navigator.geolocation.getCurrentPosition(
                function initMap(position) {
                   var lat = position.coords.latitude + ","+position.coords.longitude;
                   var address2 = lat;
                //   var geocoder = new google.maps.Geocoder();

                   var map2 = new google.maps.Map(document.getElementById('map'), {
                     zoom:15,
                     center: {lat:37.5575367,lng:127.0007751}
                   });
                    var geocoder2 = new google.maps.Geocoder();
                   geocodeAddress(address2,geocoder2, map2);
                 }
               );
             }

            </script>

            <script async defer
            src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA8pFXpSHYIpak8pbU4x-ntfmvRnaemTHo&callback=initMap">
            </script>
            </div>

           </div>
         </div>

        <div class="panel panel-default">
				 <div class="panel-heading" role="tab" id="headingFive">
				  <h4 class="panel-title asd">
					<a class="pa_italic collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseFive" aria-expanded="false" aria-controls="collapseFive">
					  <span class="glyphicon glyphicon-plus" aria-hidden="true"></span><i class="glyphicon glyphicon-minus" aria-hidden="true"></i>요리검색 결과
					</a>
				  </h4>
				 </div>
				 <div id="collapseFive" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFive" aria-expanded="false" style="height: 0px;">
				   <div class="panel-body panel_text">
             <h3 style="text-align: left;"> 요리이름 </h3>
             <div class="col-md-3 w3ls_w3l_banner_left w3ls_w3l_banner_left" style="padding-left: 0px; padding-right: 0px;">
     					<div class="hover14 column"></div>
     						<div class="agile_top_brand_left_grid w3l_agile_top_brand_left_grid">
   							<div class="agile_top_brand_left_grid1">
   								<figure>
   									<div class="snipcart-item block">
   										<div class="snipcart-thumb">
   											<a href="single.jsp"><img src="images/64.png" alt=" " class="img-responsive"></a>
   											<p>pepper salami (250 gm)</p>
   											<h4>$10.0</h4>
   										</div>
   										<div class="snipcart-details">
   											<form action="#" method="post">
   												<fieldset>
   													<input type="hidden" name="cmd" value="_cart">
   													<input type="hidden" name="add" value="1">
   													<input type="hidden" name="business" value=" ">
   													<input type="hidden" name="item_name" value="pepper salami">
   													<input type="hidden" name="amount" value="10.00">
   													<input type="hidden" name="discount_amount" value="1.00">
   													<input type="hidden" name="currency_code" value="USD">
   													<input type="hidden" name="return" value=" ">
   													<input type="hidden" name="cancel_return" value=" ">
   													<input type="submit" name="submit" value="Add to cart" class="button">
   												</fieldset>
   											</form>
   										</div>
   									</div>
   								</figure>
   							</div>
   						</div>
   					</div>
            <div class="col-md-3 w3ls_w3l_banner_left" style="padding-left: 0px;">
              <div class="agile_top_brand_left_grid1" style="backgroud: white;">
            	   <h3 class=title style="font-size: small;"> 요리설명 </h3>
                 <p style="width: -webkit-fill-available; height: 170px; overflow: scroll;">
                   "한국 요리(韓國料理, 문화어: 조선 료리)는 한국의 음식을 뜻한다. 복잡한 궁중 요리에서부터 지방의 특색 요리와 현대의 퓨전 요리에 이르기까지 재료와 조리법이 매우 다양하다. 전통적인 한국 정식은 밥, 국, 김치와 함께 나오는 많은 반찬들로 이루어진다. 한국 요리는 주로 쌀을 기반으로. 일반적으로 사용되는 성분 포함 참기름, 된장, 간장, 소금, 마늘, 생강, 다시마국물그리고 고추장 등으로 맛을 낸다. 김치는 거의 항상 모든 음식에서 제공된다. 식단은 계절별로 다양한데, 전통적으로 겨울 동안에는 마당에 구멍을 파고 땅 속에 묻어 놓은 장독에 저장된 김치와 그 밖에 절인 채소들에 많이 의존했다. 그러나 현재는 계절에 상관없이 대부분의 식단을 맛볼 수 있다."
                 </p>
            	</div>
            </div>
            <div class="col-md-3 w3ls_w3l_banner_left">
              <div class="hover14 column"></div>
              <div class="agile_top_brand_left_grid1" style="background: white;">
                <h3 class=title style="font-size: small;"> 필요재료 </h3>
                <li> 재료1 </li>
                <li> 재료2 </li>
                <li> 재료3 </li>
                <li> 아주긴재료이름름름4 </li>
                <div class="snipcart-details">
                  <form action="#" method="post">
                    <fieldset>
                      <input type="hidden" name="cmd" value="_cart">
                      <input type="hidden" name="add" value="1">
                      <input type="hidden" name="business" value=" ">
                      <input type="hidden" name="item_name" value="pepper salami">
                      <input type="hidden" name="amount" value="10.00">
                      <input type="hidden" name="discount_amount" value="1.00">
                      <input type="hidden" name="currency_code" value="USD">
                      <input type="hidden" name="return" value=" ">
                      <input type="hidden" name="cancel_return" value=" ">
                      <input type="submit" name="submit" value="장바구니 일괄담기" class="button">
                    </fieldset>
                  </form>
                </div>
              </div>
            </div>
            <div class="col-md-3 w3ls_w3l_banner_left" style="width: 25%;">
              <div class="hover14 column"></div>
              <div class="agile_top_brand_left_grid1" style="background: white;">
              <h3 class="title" style="font-size: small;"> '요리이름'과 비슷한 요리 </h3>
              <div class="list-group list-group-alternate" style="margin-bottom: 5px;">
						   <a href="#" class="list-group-item"> '요리1이름' 간단한 설명~~ </a>
						   <a href="#" class="list-group-item"> 요리2 </a>
						   <a href="#" class="list-group-item"> 요리3 </a>
              </div>
              <h3 class="title" style="font-size: small;"> '요리이름'와 잘 어울려요~! </h3>
              <div class="list-group list-group-alternate" style="margin-bottom: 0px;">
               <a href="#" class="list-group-item"> 요리1 </a>
 						   <a href="#" class="list-group-item"> 요리2 </a>
 						   <a href="#" class="list-group-item"> 요리3 </a>
              </div>
					   </div>
            </div>

				   </div>
				  </div>
			   </div>

			   <div class="panel panel-default">
				<div class="panel-heading" role="tab" id="headingSix">
				  <h4 class="panel-title asd">
					<a class="pa_italic collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseSix" aria-expanded="false" aria-controls="collapseSix">
					  <span class="glyphicon glyphicon-plus" aria-hidden="true"></span><i class="glyphicon glyphicon-minus" aria-hidden="true"></i>재료검색 결과
					</a>
				  </h4>
				</div>
				<div id="collapseSix" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingSix" aria-expanded="false" style="height: 0px;">
				   <div class="panel-body panel_text">
					Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur.
				  </div>
				</div>
			  </div>
			   <div class="panel panel-default">
				<div class="panel-heading" role="tab" id="headingSeven">
				  <h4 class="panel-title asd">
					<a class="pa_italic collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseSeven" aria-expanded="false" aria-controls="collapseSeven">
					  <span class="glyphicon glyphicon-plus" aria-hidden="true"></span><i class="glyphicon glyphicon-minus" aria-hidden="true"></i>마트검색 결과
					</a>
				  </h4>
				</div>
				<div id="collapseSeven" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingSeven" aria-expanded="false">
				   <div class="panel-body panel_text">
					Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur.
				  </div>
				</div>
			  </div>
		</div>
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
  <script type="txt/javascript">
    document.write("<p>This is 'MsgWindow'. I am 200px wide and 100px tall!</p>");
    var jbString = rs.getString(3);
    var jbSplit = jbString.split(',');
    for ( var i in jbSplit) {
      document.write( '<h3>' + jbSplit[i] + '</h3>');
      <h3> jbSplit[i] </h3>
    }
  </script>
</body>
</html>
