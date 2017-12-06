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
    PreparedStatement pstmt = null;
    ResultSet rs = null;
    String callrow = "select Ingredientname, Genre, ingrepicture, Prise, Method_storage, Method_cook from Ingredient";
    pstm = myconn.prepareStatement(callrow);
    rs = pstmt.executeQuery();
    while(rs.next()){
      String Ingredientname = rs.getString("Ingredientname");
      String Genre = rs.getString("Genre");
      String ingrepicture = rs.getString("ingrepicture");
      int Prise = rs.getInt("Prise");
      String Method_storage = rs.getString("Method_storage");
      String Method_cook = rs.getString("Method_cook");
      out.write(Ingredientname+" "+Genre);
		}
    rs.close();
    myconn.close();
    pstmt.close();
%>
</body>
</html>
