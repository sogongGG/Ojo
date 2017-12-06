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
String q1 = "delete from Food where Foodname = ?";
PreparedStatement pst=myconn.prepareStatement(q1);
pst.setString(1, Foodname);

pst.executeUpdate();
%>
<script>
alert('삭제되었습니다');
location.href="../admin.jsp";
</script>


</body>
</html>
