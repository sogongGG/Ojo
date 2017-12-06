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
int intPhonenum = 0;
String userId=request.getParameter("userId");
String userPWD=request.getParameter("userPWD");
String userFName=request.getParameter("userFName");
String userLName=request.getParameter("userLName");
String userPhoneNum=request.getParameter("userPhoneNum");
intPhonenum = Integer.parseInt(userPhoneNum);
String userEmail=request.getParameter("userEmail");
String userBirthDay = request.getParameter("userBirthDay");
String userBirthMonth = request.getParameter("userBirthMonth");
String userBirthYear = request.getParameter("userBirthYear");

String q1 = "update User set Password=?, Lastname=?, Firstname=?, Phonenum=?, E_mail=?, Birth_day=?, Birth_month=?, Birth_year=? where ID=?";
PreparedStatement pst=myconn.prepareStatement(q1);
pst.setString(1, userPWD);
pst.setString(2, userLName);
pst.setString(3, userFName);
pst.setInt(4, intPhonenum);
pst.setString(5, userEmail);
pst.setString(6, userBirthDay);
pst.setString(7, userBirthMonth);
pst.setString(8, userBirthYear);
pst.setString(9, userId);
pst.executeUpdate();
%>
<script>
alert('입력한 내용으로 수정되었습니다');
location.href="../My_Page.jsp";
</script>


</body>
</html>
