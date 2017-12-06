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

StringTokenizer sttoken = new StringTokenizer(Marketcoordinate, ",");
while(sttoken.hasMoreTokens()){
  coordinate[index] = sttoken.nextToken();
  index++;
}
latitude = Double.parseDouble(coordinate[0]);
longitude = Double.parseDouble(coordinate[1]);

String Marketaddress=request.getParameter("Marketaddress");
String marketpicture=request.getParameter("marketpicture");
String Marketphonenum=request.getParameter("Marketphonenum");
String Market_ingredient=request.getParameter("Market_ingredient");
String Market_explanation=request.getParameter("Market_explanation");



request.setCharacterEncoding("euc-kr");

String q1 = "update Market set latitude=?, longitude=?, marketpicture=?, Explanation=? where (Marketname=? && Marketbranch=?)";
PreparedStatement pst=myconn.prepareStatement(q1);
pst.setDouble(1, latitude);
pst.setDouble(2, longitude);
pst.setString(3, marketpicture);
pst.setString(4, Market_explanation);
pst.setString(5, Marketname);
pst.setString(6, Marketbranch);
pst.executeUpdate();
%>

<script>
alert('입력한 내용이 수정되었습니다');
location.href="../admin.jsp";
</script>

</body>
</html>
