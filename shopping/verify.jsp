<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	  String mysqlDriver = "com.mysql.jdbc.Driver";
	  String mysqlRoute = "jdbc:mysql://localhost:3306/shoppingmall";
	  String mysqlroot = "root";
	  String mysqlPW = "ks01";

	  Class.forName(mysqlDriver);
		Connection myconn=null;
		myconn = DriverManager.getConnection(mysqlRoute, mysqlroot, mysqlPW);
%>
<%
String LoginUsername=request.getParameter("LoginUsername");
String LoginPassword=request.getParameter("LoginPassword");

request.setCharacterEncoding("euc-kr");


String name = "select * from administrator where ID =? && Password=?";


PreparedStatement pst=myconn.prepareStatement(name);
pst.setString(1, LoginUsername);
pst.setString(2, LoginPassword);
ResultSet rs=pst.executeQuery();

if(rs.next()){
	session.setAttribute("sessionid", LoginUsername);
	rs.previous();
	response.sendRedirect("admin.jsp");
}
else{
	name = "select * from user where ID =? && Password=?";
	pst=myconn.prepareStatement(name);
	pst.setString(1, LoginUsername);
	pst.setString(2, LoginPassword);
	rs=pst.executeQuery();

	if(rs.next()){
		session.setAttribute("sessionid", LoginUsername);
		rs.previous();
		response.sendRedirect("index.jsp");
	}
	else{
		rs.previous();
		response.sendRedirect("login.jsp");
	}

}
%>


</body>
</html>
