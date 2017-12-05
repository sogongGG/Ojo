<%@ page import = "java.sql.*"%>
<%
    String mysqlDriver = "com.mysql.jdbc.Driver";
    String mysqlRoute = "jdbc:mysql://localhost:3306/shoppingmall";
    String mysqlroot = "root";
    String mysqlPW = "LNiaMelo561248^*";
    Connection myconn=null;
    Class.forName(mysqlDriver);
  	myconn = DriverManager.getConnection(mysqlRoute, mysqlroot, mysqlPW);

%>
