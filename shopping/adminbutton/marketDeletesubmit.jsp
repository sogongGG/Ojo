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
request.setCharacterEncoding("euc-kr");

String q1 = "delete from Market where (Marketname=? && Marketbranch=?)";
PreparedStatement pst=myconn.prepareStatement(q1);
pst.setString(1, Marketname);
pst.setString(2, Marketbranch);
pst.executeUpdate();
%>

<script>
alert('삭제되었습니다');
location.href="../admin.jsp";
</script>

</body>
</html>
