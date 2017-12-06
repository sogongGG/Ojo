<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="UTF-8"%>
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


<link rel="icon" type="image/png"  href="../images/sg.ico"/>
<!-- //for-mobile-apps -->
<link href="../css/bootstrap.css?ver=1" rel="stylesheet" type="text/css" media="all" />
<link href="../css/style.css?ver=1" rel="stylesheet" type="text/css" media="all" />
<!-- font-awesome icons -->
<link href="../css/font-awesome.css" rel="stylesheet" type="text/css" media="all" />
<!-- //font-awesome icons -->
<!-- js -->
<script src="http://code.jquery.com/jquery-1.12.1.js"></script>

<!-- //js -->
<link href='..//fonts.googleapis.com/css?family=Ubuntu:400,300,300italic,400italic,500,500italic,700,700italic' rel='stylesheet' type='text/css'>
<link href='..//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>

<!-- start-smoth-scrolling -->
<script type="text/javascript"> var google_apikey="AIzaSyA8pFXpSHYIpak8pbU4x-ntfmvRnaemTHo"</script>
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>

<script type="text/javascript">
	$(document).ready(function($) {
		$(".scroll").click(function(event){
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>
<!-- start-smoth-scrolling -->
</head>
<script type="text/javascript">
		function clearText(field){
			if (field.defaultValue == field.value) field.value = '';
			else if (field.value == '') field.value = field.defaultValue;
		}
</script>



<script type="text/javascript">
function call_row1(){
  var i = 0;
  add_row1();
}
</script>

<script type="text/javascript">
$(document).ready(function($){
  $("#callrow1id").on('click',function(){
    alert('데이터요청');
    $.ajax({
      type:"get",
      url:"call_row1.jsp",
      success: function(t){
          alert('연결성공');
          //alert($(t).text());
          //$("<h1></h1>").text($(t).text()).appendTo("body");
        },
        error: function(){
          alert('연결실패');
        }
      });
    });
  });
</script>

<script src="http://code.jquery.com/jquery-1.12.1.js"></script>

<script>
			$("snip1535.hover").mouseleave(function() {
   				 $(this).removeClass("hover");
  					}
			);
</script>

<script type="text/javascript">
	$(document).ready(function() {
    	$(".tab_content").hide();
    	$(".tab_content:first").show();
      $(".adminbuttonset").hide();
      $(".adminbuttonset:first").show();

    	$("ul.tabs li").click(
    	function (){
        	$("ul.tabs li").removeClass("active").css("color", "#333");
        	$(this).addClass("active").css("color", "darkred");
        	$(".tab_content").hide();
          $(".adminbuttonset").hide();
       		var activeTab = $(this).attr("rel");
          var activebuttonset = $(this).attr("but");
        	$("#" + activeTab).fadeIn();
          $("#" + activebuttonset).fadeIn();
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
	});
});
</script>

<script>
function add_row1() {
    var table = document.getElementById('tab1_tbody');
      var row = table.insertRow( table.rows.length ); // 하단에 추가
      var cell1 = row.insertCell(0); cell1.innerHTML='<input type="checkbox" name="ingre_checkBox"/>';
      var cell2 = row.insertCell(1); cell2.innerHTML='<input name = "Ingredientname" type="text" size = "10">';
      var cell3 = row.insertCell(2); cell3.innerHTML='<input name = "Genre" type="text" size = "10">';
      var cell4 = row.insertCell(3); cell4.innerHTML='<input name = "ingrepicture" type = "text" size = "10">';
      var cell5 = row.insertCell(4); cell5.innerHTML='<input name = "Prise" type = "text" size = "10">';
      var cell6 = row.insertCell(5); cell6.innerHTML='<input name = "Method_storage" type="text" size = "10">';
      var cell7 = row.insertCell(6); cell7.innerHTML='<input name = "Method_cook" type = "text" size = "10">';
  }
function delete_row1() {
    var table = document.getElementById('tab1_tbody');
    if (table.rows.length < 1) return;
    table.deleteRow( table.rows.length-1 ); // 하단부터 삭제
  }
</script>

<script>
function add_row2() {
  var table = document.getElementById('tab2_tbody');
    var row = table.insertRow( table.rows.length ); // 하단에 추가
    var cell1 = row.insertCell(0); cell1.innerHTML='<input type="checkbox"/>'
    var cell2 = row.insertCell(1); cell2.innerHTML='<input name = "Foodname" type="text" size = "10">';
    var cell3 = row.insertCell(2); cell3.innerHTML='<input name = "Genre" type="text" size = "10">';
    var cell4 = row.insertCell(3); cell4.innerHTML='<input name = "foodpicture" type="text" size = "10">';
    var cell5 = row.insertCell(4); cell5.innerHTML='<input name = "Explanation" type="text" size = "10">';
    var cell6 = row.insertCell(5); cell6.innerHTML='<input name = "Needingredients" type="text" size = "10">';
    var cell7 = row.insertCell(6); cell7.innerHTML='<input name = "Point" type="text" size = "10">';
}
function delete_row2() {
  var table = document.getElementById('tab2_tbody');
  if (table.rows.length < 1) return;
  table.deleteRow( table.rows.length-1 ); // 하단부터 삭제
}
</script>

<script>
function add_row3() {
var table = document.getElementById('tab3_tbody');
  var row = table.insertRow( table.rows.length ); // 하단에 추가
  var cell1 = row.insertCell(0); cell1.innerHTML='<input type="checkbox"/>'
  var cell2 = row.insertCell(1); cell2.innerHTML='<input name = "Marketname" type="text" size = "10">';
  var cell3 = row.insertCell(2); cell3.innerHTML='<input name = "marketpicture" type="text" size = "10">';
  var cell4 = row.insertCell(3); cell4.innerHTML='<input name = "Marketphone" type="text" size = "10">';
  var cell5 = row.insertCell(4); cell5.innerHTML='<input name = "Marketaddress" type="text" size = "10">';
  var cell6 = row.insertCell(5); cell6.innerHTML='<input name = "Marketcoordinate" type="text" size = "10">';
  var cell7 = row.insertCell(6); cell7.innerHTML='<input name = "Market_ingredient" type="text" size = "10">';
}
function delete_row3() {
var table = document.getElementById('tab3_tbody');
if (table.rows.length < 1) return;
table.deleteRow( table.rows.length-1 ); // 하단부터 삭제
}
</script>
<body>
<%
	String sessionid = "";
	sessionid = (String)session.getAttribute("sessionid");
	request.setCharacterEncoding("euc-kr");

  String name = "select * from administrator where ID =?";
	PreparedStatement pst=myconn.prepareStatement(name);
	pst.setString(1, sessionid);
	ResultSet rs=pst.executeQuery();

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
				<div class ="indexlogin"><a href="../login.jsp">Login</a>
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
	<script type="text/javascript">
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
          <a href="../index.jsp"><img src="../images/oOo.gif" alt="O o O"
            height="120" width="250" class="img-responsive img-circle" ></a>
        </h1>
			</div>
			<div class="w3ls_logo_products_left1">
				<ul class="special_items">
					<li><a href="../events.jsp">모든 상품</a><i>/</i></li>
					<li><a href="../about.jsp">요리</a><i>/</i></li>
					<li><a href="../products.jsp">재료</a><i>/</i></li>
					<li><a href="../services.jsp">마트</a></li>
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
					<li><i class="fa fa-envelope-o" aria-hidden="true"></i><a href="mailto:store@grocery.com">store@grocery.com</a></li>
				</ul>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
<!-- //header -->
<!-- banner -->

<script language="javascript">
	function btn_click(str){
		if(str=="ingreAdd"){
			adminbuttonform.action = "ingreAdd.jsp";
		}
		else if(str == "ingreUpdate"){
			adminbuttonform.action = "ingreUpdate.jsp";
		}
		else if(str == "ingreDelete"){
			adminbuttonform.action = "ingreDelete.jsp";
		}
		else if(str == "foodAdd"){
			adminbuttonform.action = "foodAdd.jsp";
		}
		else if(str == "foodUpdate"){
			adminbuttonform.action = "foodUpdate.jsp";
		}
		else if(str == "foodDelete"){
			adminbuttonform.action = "foodDelete.jsp";
		}
		else if(str == "marketAdd"){
			adminbuttonform.action = "marketAdd.jsp";
		}
		else if(str == "marketUpdate"){
			adminbuttonform.action = "marketUpdate.jsp";
		}
		else if(str == "marketDelete"){
			adminbuttonform.action = "marketDelete.jsp";
		}
	}
</script>
<!-- banner -->
	<div class="administrator">
		<h4>관리자 페이지 입니다!</h4>
		<div id="container">
    		<ul class="tabs">
        	<li but="adminbuttonset1" rel="tab1">재료</li>
        	<li but = "adminbuttonset2" rel="tab2">요리</li>
        	<li class="active" but = "adminbuttonset3" rel="tab3">마트</li>
   			</ul>
    			<div class="tab_container">
            <%
              String marketname= request.getParameter("marketname");
            %>
						<form name = "adminbuttonform" method= "post">
						<div id = "adminbuttonset1" class = "adminbuttonset">
						<input type = "text" name = "ingrename" id = "ingrename" size = "30" value="재료이름, 제조사이름" onFocus="clearText(this)" onBlur = "clearText(this)">
						<button type="submit" class="snip1535" onclick="btn_click('ingreAdd');">추가</button>
						<button type="submit" class="snip1535" onclick="btn_click('ingreUpdate');">수정</button>
						<button type="submit" class="snip1535" onclick="btn_click('ingreDelete');">삭제</button>
						</div>

						<div id = "adminbuttonset2" class = "adminbuttonset">
							<input type = "text" size = "30" value="음식 이름" onFocus="clearText(this)" onBlur = "clearText(this)">
						<button type="submit" class="snip1535" onclick="btn_click('foodAdd');">추가</button>
						<button type="submit" class="snip1535" onclick="btn_click('foodUpdate');">수정</button>
						<button type="submit" class="snip1535"onclick="btn_click('foodDelete');">삭제</button>
						</div>

						<div  id = "adminbuttonset3" class = "adminbuttonset">
							<input type = "text" size = "30" value="마트이름, 지점명" onFocus="clearText(this)" onBlur = "clearText(this)">
						<button type="submit" class="snip1535" onclick="btn_click('marketAdd');">추가</button>
						<button type="submit" class="snip1535" onclick="btn_click('marketUpdate');">수정</button>
						<button type="submit" class="snip1535" onclick="btn_click('marketDelete');">삭제</button>
						</div>
						</form>
            <h1>세부 추가 항목</h1>
            <form action = "marketAddsubmit.jsp" method = "post">
            <table class = "type09">
              <thead>
                <tr>
                  <th>항목</th>
                  <th>내용</th>
                  <th>항목</th>
                  <th>내용</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>마트 이름</td>
                  <td><input type = "text", name = "Marketname", value = "<%= marketname %>", onFocus="clearText(this)" onBlur = "clearText(this)"></td>
									<td>마트 지점</td>
                  <td><input type = "text", name = "Marketbranch"></td>
                </tr>
                <tr>
                  <td>사진링크</td>
                  <td><input type = "text", name = "marketpicture"></td>
                  <td>마트 번호</td>
                  <td><input type = "text", name = "Marketphonenum"  value="ex)000)-0000-0000,000)-0000-0000" onFocus="clearText(this)" onBlur = "clearText(this)"></td>
                </tr>
                <tr>
                  <td>마트 주소</td>
                  <td><input type = "text", name = "Marketaddress" value="ex)aaaa,aaaa" onFocus="clearText(this)" onBlur = "clearText(this)"></td>
                  <td>마트 좌표</td>
                  <td><input type = "text", name = "Marketcoordinate" value="ex)123.45,67.890" onFocus="clearText(this)" onBlur = "clearText(this)"></td>
                </tr>
                <tr>
                  <td>마트 재료</td>
                  <td><input type = "text", name = "Market_ingredient" value="ex)a,b,c,d,e" onFocus="clearText(this)" onBlur = "clearText(this)"></td>
                </tr>
              </tbody>
            </table>
            <input type = "submit" value = "추가">
            </form>
        			<!--
							<div class="tab_container">
								<div id="tab1" class="tab_content">
            			<table class = "type09_head">
            				<thead>
            				<tr>
            					<th> <input type="checkbox" id="allCheck"/>전체선택 </th>
            					<th>재료이름</th>
                      <th>장르</th>
            					<th>사진링크</th>
            					<th>평균가격 </th>
            					<th>보관 방법</th>
            					<th>손질 방법</th>
            				</tr>
                  </thead>
                </table>
                <table class = "type09">
            				<tbody id = "tab1_tbody"
            				</tbody>
            			</table>
        			</div>
						</div>

						<div class="tab_container">
        			<div id="tab2" class="tab_content">
        			<table class = "type09_head">
            				<thead>
            				<tr>
            					<th> <input type="checkbox" id="allCheck"/>전체선택 </th>
            					<th>요리 이름</th>
            					<th>장르</th>
            					<th>요리 사진 링크</th>
                      <th>요리 설명</th>
            					<th>필요한 재료 리스트</th>
            					<th>평점</th>
            				</tr>
            				</thead>
                  </table>
                  <table class = "type09">
            				<tbody  id = "tab2_tbody">
            				</tbody>
            			</table>
        			</div>
						</div>

						<div class="tab_container">
        			<div id="tab3" class="tab_content">
        			<table class = "type09_head">
            				<thead>
            				<tr>
            					<th> <input type="checkbox" id="allCheck"/>전체선택 </th>
                      <th>마트 이름</th>
            					<th>마트 사진 링크</th>
            					<th>마트 전화번호</th>
            					<th>마트 주소</th>
            					<th>마트 좌표</th>
            					<th>마트 재료</th>
            				</tr>
            				</thead>
                  </table>
                  <table class = "type09">
            				<tbody  id = "tab3_tbody">
            				</tbody>
            			</table>
        			</div>
						</div>
        -->
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
