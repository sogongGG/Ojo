<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<%@ page import = "java.util.*" %>
<%@ include file = "sqllogininfo.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>

<%

request.setCharacterEncoding("euc-kr");
String market_phonearr[] = new String[100];
String market_ingrearr[] = new String[100];
String coordinate[] = new String[2];
double latitude=0;
double longitude=0;

int index=0;
String Marketname=request.getParameter("Marketname");
String Marketbranch=request.getParameter("Marketbranch");
String Marketcoordinate=request.getParameter("Marketcoordinate");
String marketpicture=request.getParameter("marketpicture");
String Explanation=request.getParameter("Market_explanation");

StringTokenizer sttoken = new StringTokenizer(Marketcoordinate, ",");
while(sttoken.hasMoreTokens()){
  coordinate[index] = sttoken.nextToken();
  index++;
}
latitude = Double.parseDouble(coordinate[0]);
longitude = Double.parseDouble(coordinate[1]);

String Marketaddress=request.getParameter("Marketaddress");
String Marketphonenum=request.getParameter("Marketphonenum");
String Market_ingredient=request.getParameter("Market_ingredient");

String q1 = "insert into Market values(?,?,?,?,?,?)";
PreparedStatement pst=myconn.prepareStatement(q1);

pst.setString(1, Marketname);
pst.setString(2, Marketbranch);
pst.setDouble(3, latitude);
pst.setDouble(4, longitude);
pst.setString(5, marketpicture);
pst.setString(6, Explanation);
pst.executeUpdate();
%>
<script>
alert('입력한 내용이 추가되었습니다');
location.href="../admin.jsp";
</script>


</body>
</html>
