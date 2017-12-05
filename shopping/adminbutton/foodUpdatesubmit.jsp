<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
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

String Foodname=request.getParameter("Foodname");
String Genre=request.getParameter("Genre");
String foodpicture=request.getParameter("foodpicture");
String Explanation=request.getParameter("Explanation");
String Expectedtime=request.getParameter("Expectedtime");

String Needingredients=request.getParameter("Needingredients");
int Point=Integer.parseInt((String)request.getParameter("Point"));


String q1 = "update food set Genre = ?, foodpicture = ?, Explanation = ?, Expectedtime = ? where Foodname = ?";
PreparedStatement pst=myconn.prepareStatement(q1);
pst.setString(1, Genre);
pst.setString(2, foodpicture);
pst.setString(3, Explanation);
pst.setString(4, Expectedtime);
pst.setString(5, Foodname);

pst.executeUpdate();
%>
<script>
alert('입력한 내용으로 수정되었습니다');
location.href="../admin.jsp";
</script>


</body>
</html>
