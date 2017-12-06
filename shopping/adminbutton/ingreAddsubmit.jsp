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
String ingrepicture=request.getParameter("ingrepicture");
String Genre=request.getParameter("Genre");
String Method_storage=request.getParameter("Method_storage");
String Method_cook=request.getParameter("Method_cook");
int Prise=Integer.parseInt((String)request.getParameter("Prise"));
int Salespercent=Integer.parseInt((String)request.getParameter("Salespercent"));
int Amount=Integer.parseInt((String)request.getParameter("amount"));


request.setCharacterEncoding("euc-kr");

String q1 = "insert into Ingredient values(?,?,?,?,?,?,?,?,?)";


PreparedStatement pst=myconn.prepareStatement(q1);
pst.setString(1, Ingredientname);
pst.setString(2, Manufacturer);
pst.setString(3, ingrepicture);
pst.setString(4, Genre);
pst.setString(5, Method_storage);
pst.setString(6, Method_cook);
pst.setInt(7, Prise);
pst.setInt(8, Salespercent);
pst.setInt(9, Amount);

pst.executeUpdate();
%>
<script>
alert('입력한 내용이 추가되었습니다');
location.href="../admin.jsp";
</script>


</body>
</html>
