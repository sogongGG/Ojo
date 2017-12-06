<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<%@ include file = "sqllogininfo.jsp" %>
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
<%!
String search_String;
String get_search_string_jsp;
%>
<%
request.setCharacterEncoding("euc-kr");
search_String = request.getParameter("searchKey");
get_search_string_jsp = Get_search_string();
/*
String mysqlDriver = "com.mysql.jdbc.Driver";
String mysqlRoute = "jdbc:mysql://localhost:3306/shoppingmall";
String mysqlroot = "root";
String mysqlPW = "admin";
Class.forName(mysqlDriver);
Connection myconn=null;
myconn = DriverManager.getConnection(mysqlRoute, mysqlroot, mysqlPW);*/
%>
<%!
public String Get_search_string()
{
  return search_String;
}
%>
<script>
 var get_search_string_js ="<%=get_search_string_jsp%>";
</script>
<%
  /* search 값 get 하는 방법 !  // search_String 직접 access ㄴㄴ
  JSP 함수 - Get_search_string()
  JSP 변수 - get_search_string_jsp
  JavaScript 변수 = get_search_string_js
  */
%>



<%
String searchKey = request.getParameter("searchKey");
Statement stmt = myconn.createStatement();
String search = "select * from Food where Foodname ='"+searchKey+"';";
ResultSet rs = stmt.executeQuery(search);
String[] sArray1 = new String[5]; //food info
String[] sArray2 = new String[10]; //ingredient_food (name only) info
String[] sArray3 = new String[90]; //ingredient info
String[] sArrayMart = new String[20]; //market info

if(rs.next()) {
  for (int i = 0; i < sArray1.length; i++){
    sArray1[i] = rs.getString(i+1);
  }
}
else{
  searchKey = "Recommended";
  search = "select * from Food where Foodname ='"+searchKey+"';";
  rs = stmt.executeQuery(search);
  if(rs.next()){
    for (int i = 0; i < sArray1.length; i++){
      sArray1[i] = rs.getString(i+1);
    }
  }
}
search = "select * from Ingredient_food where Foodname = '"+searchKey+"';";
rs = stmt.executeQuery(search);
int tmp = 0;
while (rs.next()){
  sArray2[tmp++] = rs.getString(2);
}

int count = 0;
int tmp2 = 0;
while(count < tmp){
  searchKey = sArray2[count];
  search = "select * from Ingredient where Ingredientname = '"+searchKey+"';";
  rs = stmt.executeQuery(search);
  if (rs.next()){
    for (int i = 0; i < 9; i++){
      sArray3[tmp2++] = rs.getString(i+1);
    }
  }
  count++;
}
/*request.setCharacterEncoding("utf-8");
String searchKey_test ="";
PreparedStatement pstmt_test = null;
searchKey_test = "레몬마트";
search = "select * from market where Marketname = ? ";
pstmt_test = myconn.prepareStatement(search);
pstmt_test.setString(1,searchKey_test);
rs = pstmt_test.executeQuery(search);
while(rs.next()){
  int i = 0;
  sArrayMart[i] = rs.getString(0);
  out.println(sArrayMart[i]);
}
out.println(sArrayMart[0]);*/
%>

<body>
<!-- header -->
<script type = "text/javascript">
function keyword_check(){
  return true;
}
</script>
<div class="agileits_header">
  <div class="w3l_offers" style="margin-top: 8px;">
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
        <a href="#">MyPage</a>
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
        <li><a href="https://cse.dongguk.edu/">문의하기</a></li>
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
											<a href="#"><img src=<% out.println(sArray1[2]); %> alt=" " class="img-responsive" style="max-width: 100%; max-height: 150px;"></a>
											<p> <%=sArray1[0] %> </p>
                      <%
                    //  searchKey = rs.getString(1);
                    //  search = "select * from ingredient_food where Foodname = '"+searchKey+"';";
                    //  searchKey = rs.getString(1);
                    //  search = "select * from ingredient_food where"
                    //  if(rs.next()){

                    /*  }
                      else{
                        searchKey = "Recommended";
                        search = "select * from food where Foodname ='"+searchKey+"';";
                        rs = stmt.executeQuery(search);
                        rs.next();
                      }*/
                      %>
											<h4>예상가격 :
                        <%
                          int sum = 0;
                          for (int k = 0; sArray2[k] != null; k++){
                              sum += Integer.parseInt(sArray3[6 + (k * 9)]);
                            }
                          out.println(sum);
                        %>
                      원</h4>
										</div>
										<div class="snipcart-details">
											<form action="#" method="post">
												<fieldset>
													<input type="hidden" name="cmd" value="_cart">
													<input type="hidden" name="add" value="1">
													<input type="hidden" name="business" value=" ">
													<input type="hidden" name="item_name" value=<%=sArray2[0] %>>
													<input type="hidden" name="amount" value=<%=sArray3[6] %>>
													<input type="hidden" name="discount_rate" value=<%=sArray3[7] %>>
													<input type="hidden" name="currency_code" value="KRW">
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
                 <% out.println(sArray1[3]);
                 %>
               </p>
               <h3 class=title style="font-size: small;"> 필요재료 </h3>
                <%
                  for (int i = 0; sArray2[i] != null; i++){
                    out.println(sArray2[i]);
                  }
                %>
          	</div>
          </div>
          <div class="col-md-3 w3ls_w3l_banner_left" style="padding-left: 0px; width:40%;">
            <h3 class=title style="font-size: small;"> 인근마트 </h3>
            <a class="btn" href="#">
              <i class="fa fa-map-marker" aria-hidden="true"
                id="now_location" onclick="getLocation()">&nbsp;&nbsp;&nbsp;현재위치로 검색하기!</i>
            </a>
            <div id="map" style="width: 120%; height:350px; background-color: grey;"> </div>

            <%
            PreparedStatement pstmt = null;
            ResultSet rs1 = null;
            boolean result = false;
            Double now_lat,now_lat_low,now_lat_high;
            Double now_lng,now_lng_low,now_lng_high;
            String test_post;
            String martname1[] = new String[100];
            String martname2[] = new String[100];
            String martexplanation1[] = new String[100];
            String martpicture2[] = new String[100];
            Double martlat[]  = new Double[100];
            Double martlng[]  = new Double[100];
            int count_i = 0;
            if(request.getParameter("latitude_post")!=null){
              try{
                now_lat = Double.valueOf(request.getParameter("latitude_post")).doubleValue();
                now_lng = Double.valueOf(request.getParameter("longitude_post")).doubleValue();
                now_lat_low = now_lat - 1;
                now_lat_high = now_lat + 1;
                now_lng_low = now_lng - 1;
                now_lng_high = now_lng + 1;
              String sql = "select * from Market where (latitude between ? AND ?) AND (longitude between ? AND ?)";
                pstmt = myconn.prepareStatement(sql);
                pstmt.setDouble(1,now_lat_low);
                pstmt.setDouble(2,now_lat_high);
                pstmt.setDouble(3,now_lng_low);
                pstmt.setDouble(4,now_lng_high);
                rs1 = pstmt.executeQuery();
                count_i =0;
              while(rs1.next() && count_i < 90){

                martname1[count_i] = rs1.getString("Marketname");
                martname2[count_i] = rs1.getString("Marketbranch");
                martlat[count_i] = rs1.getDouble("latitude");
                martlng[count_i] = rs1.getDouble("longitude");
                martpicture2[count_i] =  rs1.getString("marketpicture");
                martexplanation1[count_i] =  rs1.getString("Explanation");

                count_i++;
              }

            }
            catch(SQLException se){
              System.out.println(se.getMessage());
            }

            }
            else{
            }
            %>

            <!-- address에 검색값 input !!!!-->
            <script>
            document.getElementsByName("latitude_post")[0].value = 37.5575367;
            document.getElementsByName("longitude_post")[0].value = 127.0007751;
            var now_address_lat;
            var now_address_lng;

            function initMap() {
             var map = new google.maps.Map(document.getElementById('map'), {
               zoom: 15,
               center: {lat:37.5575367,lng:127.0007751}
             });
             var geocoder = new google.maps.Geocoder();
            ////////////address에 검색값 input!!!!
            var address;
            if(get_search_string_js=="null"){
              alert("검색어를 넣어주세요")
              address ="ㅃ";
             geocodeAddress(address,geocoder, map);
              }
              else{
                address =get_search_string_js;
               geocodeAddress(address,geocoder, map);
              }
            }

             function geocodeAddress(address,geocoder, resultsMap) {
             geocoder.geocode({'address': address}, function(results, status) {
                 if (status === 'OK') {
                   resultsMap.setCenter(results[0].geometry.location);
                 var input_content = '<p>'+results[0].formatted_address+'</p>';
                 now_address_lat  = results[0].geometry.location.lat();
                  now_address_lng =  results[0].geometry.location.lng();
                  makemarker("검색위치","./images/cheering_minions.gif",input_content,resultsMap,
                  results[0].geometry.location.lat(), results[0].geometry.location.lng())
/*
                  martname1[count_i] = rs1.getString("Marketname");
                  martname2[count_i] = rs1.getString("Marketbranch");
                  martlat[count_i] = rs1.getDouble("latitude");
                  martlng[count_i] = rs1.getDouble("longitude");
                  martpicture2[count_i] =  rs1.getString("marketpicture");
                  martexplanation1[count_i] =  rs1.getString("Explanation");
*/
                  makemarker("<%=martname1[0]%>","./"+"<%=martpicture2[0]%>",
                  "<h4><%=martname2[0]%></h4>"+
                  "<p><%=martexplanation1[0]%></p>",resultsMap,<%=martlat[0]%>, <%=martlng[0]%>);

                  makemarker("<%=martname1[1]%>","./"+"<%=martpicture2[1]%>",
                  "<h4><%=martname2[1]%></h4>"+
                  "<p><%=martexplanation1[1]%></p>",resultsMap,<%=martlat[1]%>, <%=martlng[1]%>);

                  makemarker("<%=martname1[2]%>","./"+"<%=martpicture2[2]%>",
                  "<h4><%=martname2[2]%></h4>"+
                  "<p><%=martexplanation1[2]%></p>",resultsMap,<%=martlat[2]%>, <%=martlng[2]%>);

                  makemarker("<%=martname1[3]%>","./"+"<%=martpicture2[3]%>",
                  "<h4><%=martname2[3]%></h4>"+
                  "<p><%=martexplanation1[3]%></p>",resultsMap,<%=martlat[3]%>, <%=martlng[3]%>);

                  makemarker("<%=martname1[4]%>","./"+"<%=martpicture2[4]%>",
                  "<h4><%=martname2[4]%></h4>"+
                  "<p><%=martexplanation1[4]%></p>",resultsMap,<%=martlat[4]%>, <%=martlng[4]%>);

                  makemarker("<%=martname1[5]%>","./"+"<%=martpicture2[5]%>",
                  "<h4><%=martname2[5]%></h4>"+
                  "<p><%=martexplanation1[5]%></p>",resultsMap,<%=martlat[5]%>, <%=martlng[5]%>);

                  makemarker("<%=martname1[6]%>","./"+"<%=martpicture2[6]%>",
                  "<h4><%=martname2[6]%></h4>"+
                  "<p><%=martexplanation1[6]%></p>",resultsMap,<%=martlat[6]%>, <%=martlng[6]%>);

                  makemarker("<%=martname1[7]%>","./"+"<%=martpicture2[7]%>",
                  "<h4><%=martname2[7]%></h4>"+
                  "<p><%=martexplanation1[7]%></p>",resultsMap,<%=martlat[7]%>, <%=martlng[7]%>);
                   //  qurry( resultsMap,lat(),lng()) -> makemarker
                 } else {
                 //  alert('위치검색이 안되서 "동국대"로 보여드릴게요!');
                   resultsMap.setCenter({lat:37.5575367,lng:127.0007751});
                   now_address_lat  = 37.5575367;
                    now_address_lng =  127.0007751;
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
   											<a href="#"><img src=<% out.println(sArray1[2]); %> alt=" " class="img-responsive" style="max-width: 100%; max-height: 150px;"></a>
   											<p><% out.println(sArray1[0]);%></p>
   											<h4>예상가격 :
                          <%
                            sum = 0;
                            for (int k = 0; sArray2[k] != null; k++){
                                sum += Integer.parseInt(sArray3[6 + (k * 9)]);
                              }
                            out.println(sum);
                          %>
                        원</h4>
   										</div>
   										<div class="snipcart-details">
   											<form action="#" method="post">
   												<fieldset>
   													<input type="hidden" name="cmd" value="_cart">
   													<input type="hidden" name="add" value="1">
   													<input type="hidden" name="business" value=" ">
                            <input type="hidden" name="item_name" value=<%=sArray2[0] %>>
    												<input type="hidden" name="amount" value=<%=sArray3[6] %>>
    												<input type="hidden" name="discount_rate" value=<%=sArray3[7] %>>
    												<input type="hidden" name="currency_code" value="KRW">
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
                   <%
                   out.println(sArray1[3]);
                   %>
                 </p>
            	</div>
            </div>
            <div class="col-md-3 w3ls_w3l_banner_left">
              <div class="hover14 column"></div>
              <div class="agile_top_brand_left_grid1" style="background: white;">
                <h3 class=title style="font-size: small;"> 필요재료 </h3>
                <%
                    //  String[] sArray1 = rs.getString(5).split(",");
                    //  for (int i = 0; i < sArray1.length; i++){
                    //    String plzs1 = "<li>" + sArray1[i] + "</li>";
                    //    String plz = "<li style=" + '"' + "display: inline;" + '"' + ">" + sArray1[i] + "</li>";
                    //    String plzs = "<li>" + sArray1[i] + "</li>";
                    //    out.println(plzs);
                    //  }
                    for (int i = 0; sArray2[i] != null; i++){
                      String plz = "<li>" + sArray2[i]+ "\t" + sArray3[6 + (i * 9)] + "원" +"</li>";
                      out.println(plz);
                    }
                %>
                <script>
                function aa(){
                  document.getElementByID('item_name').value = sArray2[0];

                  return true;
                }
                </script>
                <div class="snipcart-details">

                  <form action="#" method="post">
                    <fieldset>

                      <input type="hidden" name="cmd" value="_cart">
                      <input type="hidden" name="add" value="1">
                      <input type="hidden" name="business" value=" ">
                      <input type="hidden" name="item_name" value=<%=sArray2[1] %>>
                      <input type="hidden" name="amount" value="10.00">
                      <input type="hidden" name="discount_rate" value="1.00">
                      <input type="hidden" name="currency_code" value="KRW">
                      <input type="hidden" name="return" value=" ">
                      <input type="hidden" name="cancel_return" value=" ">

                      <input type="submit" name="submit" value="장바구니 일괄담기" class="button">
                    </fieldset>
                  </form>

                </div>
              </div>
            </div>

				   </div>
				  </div>
			   </div>

         <%//searchKey = "garlic";
          //search = "select * from ingredient where Ingredientname ='"+searchKey+"';";
        //  rs = stmt.executeQuery(search);
        //  rs.next();
        //out.println(rs.getString(2));
         %>


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
             <% for (int i = 0; sArray2[i] != null; i++) {%>
             <div class="col-md-3 w3ls_w3l_banner_left w3ls_w3l_banner_left" style="padding-left: 0px; padding-right: 0px;">
               <div class="hover14 column"></div>
                 <div class="agile_top_brand_left_grid w3l_agile_top_brand_left_grid">
                 <div class="agile_top_brand_left_grid1">
                   <figure>
                     <div class="snipcart-item block">
                       <div class="snipcart-thumb">
                         <a href="#"><img src=<% out.println(sArray3[2 + (i * 9)]); %> alt=" " class="img-responsive" style="max-width: 100%; max-height: 150px;"></a>
                         <p><% out.println(sArray2[i]);%></p>
                         <h4>가격 :
                          <%
                            out.println(sArray3[6 + (i * 9)]);
                          %>
                        원</h4>
                       </div>
                       <div class="snipcart-details">
                         <form action="#" method="post">
                           <fieldset>
                             <input type="hidden" name="cmd" value="_cart">
                             <input type="hidden" name="add" value="1">
                             <input type="hidden" name="business" value=" ">
                             <input type="hidden" name="item_name" value=<%=sArray2[i] %>>
                             <input type="hidden" name="amount" value=<%=sArray3[6 + (i*9)] %>>
                             <input type="hidden" name="discount_rate" value=<%=sArray3[7 + (i*9)] %>>
                             <input type="hidden" name="currency_code" value="KRW">
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

             <%}%>
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
       <div id="collapseSeven" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingSeven" aria-expanded="false" style="height: 0px;">
          <div class="panel-body panel_text">


            <%

            PreparedStatement pstmt_1 = null;
            ResultSet rs_1 = null;
            boolean result_1 = false;
            String test_post_1 = search_String +"%";
            String martname1_1[] = new String[100];
            String martname2_1[] = new String[100];
            String martpicture_1[] = new String[100];
            String martexplanation_1[] = new String[100];

            Double martlat_1[]  = new Double[100];
            Double martlng_1[]  = new Double[100];
            int count_i_1 = 0;
            if(request.getParameter("latitude_post")!=null){
              try{
              String sql_1 = "select * from Market where Marketname like ?";
                pstmt_1 = myconn.prepareStatement(sql_1);
                pstmt_1.setString(1, test_post_1);
                rs_1 = pstmt_1.executeQuery();
                count_i_1=0;
              while(rs_1.next() && count_i_1 < 3 ){
                martname1_1[count_i_1] = rs_1.getString("Marketname");
                martname2_1[count_i_1] = rs_1.getString("Marketbranch");
                martlat_1[count_i_1] = rs_1.getDouble("latitude");
                martlng_1[count_i_1] = rs_1.getDouble("longitude");
                martpicture_1[count_i_1] =  rs_1.getString("marketpicture");
                martexplanation_1[count_i_1] =  rs_1.getString("Explanation");
                count_i_1++;
              }
            }
            catch(SQLException se){
              System.out.println(se.getMessage());
            }
            finally{
              //정훈
              stmt.close();
              rs.close();
              //강산 - gps
                rs1.close();
                pstmt.close();
              //강산 - 마지막꺼
              rs_1.close();
              pstmt_1.close();
              myconn.close();
              }
            }
            else{

            }


            %>

            <%
            for(int i=0;i<count_i_1;i++){
            %>

            <div class="col-md-3 w3ls_w3l_banner_left w3ls_w3l_banner_left" style="padding-left: 0px; padding-right: 0px;">
              <div class="hover14 column"></div>
                <div class="agile_top_brand_left_grid w3l_agile_top_brand_left_grid">
                <div class="agile_top_brand_left_grid1">
                  <figure>
                    <div class="snipcart-item block">
                      <div class="snipcart-thumb">
                        <a href="#"><img src="<%=martpicture_1[i]%>" alt=" " class="img-responsive" style="max-width: 100%; max-height: 150px;"></a>
                        <p> <%=martname1_1[i]%> </p>
                        <h4><%=martexplanation_1[i]%>

                       </h4>
                      </div>
                    </div>
                  </figure>
                </div>
              </div>
            </div>

            <%
          }
            %>

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
