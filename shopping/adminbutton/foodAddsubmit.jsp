<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<%@ page import = "java.util.*"%>
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
String ingreAndManuf[] = new String[100];
String ingrename[] = new String[100];
String ingremanuf[] = new String[100];

int i = 0;
int j = 0;
int index = 0;

String Foodname=request.getParameter("Foodname");
String Genre=request.getParameter("Genre");
String foodpicture=request.getParameter("foodpicture");
String Explanation=request.getParameter("Explanation");
String Expectedtime=request.getParameter("Expectedtime");
String Needingredients=request.getParameter("Needingredients");
int Point=Integer.parseInt((String)request.getParameter("Point"));

String q1 = "insert into Food values(?,?,?,?,?)";
PreparedStatement pst=myconn.prepareStatement(q1);
pst.setString(1, Foodname);
pst.setString(2, Genre);
pst.setString(3, foodpicture);
pst.setString(4, Explanation);
pst.setString(5, Expectedtime);

pst.executeUpdate();
%>
<script>
alert('입력한 내용이 추가되었습니다');
location.href="../admin.jsp";
</script>

</body>
</html>
