<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<%@ page import = "java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<%
	  String mysqlDriver = "com.mysql.jdbc.Driver";
	  String mysqlRoute = "jdbc:mysql://localhost:3306/shoppingmall";
	  String mysqlroot = "root";
	  String mysqlPW = "LNiaMelo561248^*";
	  Class.forName(mysqlDriver);
		Connection myconn=null;
		myconn = DriverManager.getConnection(mysqlRoute, mysqlroot, mysqlPW);
%>
<%

request.setCharacterEncoding("euc-kr");
String market_phonearr[] = new String[100];
String market_ingrearr[] = new String[100];
String coordinate[] = new String[2];
float latitude=0;
float longitude=0;

int index=0;
String Marketname=request.getParameter("Marketname");
String Marketbranch=request.getParameter("Marketbranch");
String Marketcoordinate=request.getParameter("Marketcoordinate");

StringTokenizer sttoken = new StringTokenizer(Marketcoordinate, ",");
while(sttoken.hasMoreTokens()){
  coordinate[index] = sttoken.nextToken();
  index++;
}
latitude = Float.parseFloat(coordinate[0]);
longitude = Float.parseFloat(coordinate[1]);

String Marketaddress=request.getParameter("Marketaddress");
String marketpicture=request.getParameter("marketpicture");
String Marketphonenum=request.getParameter("Marketphonenum");
String Market_ingredient=request.getParameter("Market_ingredient");



request.setCharacterEncoding("euc-kr");

String q1 = "insert into market values(?,?,?,?)";
PreparedStatement pst=myconn.prepareStatement(q1);
pst.setString(1, Marketname);
pst.setString(2, Marketbranch);
pst.setFloat(3, latitude);
pst.setFloat(4, longitude);

pst.executeUpdate();
%>
<script>
alert('입력한 내용이 추가되었습니다');
window.close();
</script>


</body>
</html>
