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

String Ingredientname=request.getParameter("Ingredientname");
String Manufacturer=request.getParameter("Manufacturer");
request.setCharacterEncoding("euc-kr");

String q1 = "delete from Ingredient where (Ingredientname=? && Manufacturer=?)";

PreparedStatement pst=myconn.prepareStatement(q1);
pst.setString(1, Ingredientname);
pst.setString(2, Manufacturer);

pst.executeUpdate();
%>
<script>
alert('삭제되었습니다');
location.href="../admin.jsp";
</script>


</body>
</html>
