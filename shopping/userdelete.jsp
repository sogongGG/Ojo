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

String userId=request.getParameter("userId");
//String Genre=request.getParameter("Genre");
//String foodpicture=request.getParameter("foodpicture");
//String Explanation=request.getParameter("Explanation");
//String Expectedtime=request.getParameter("Expectedtime");
//String Needingredients=request.getParameter("Needingredients");
//int Point=Integer.parseInt((String)request.getParameter("Point"));


String q1 = "delete from user where ID = ?";
PreparedStatement pst=myconn.prepareStatement(q1);
pst.setString(1, userId);

pst.executeUpdate();
%>
<script>
alert('삭제되었습니다');
location.href="./My_Page.jsp";
</script>


</body>
</html>
