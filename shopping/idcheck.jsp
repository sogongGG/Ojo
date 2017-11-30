<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.sql.*"%>
<%@ page import = "java.io.PrintWriter"%>
<%
    Class.forName("com.mysql.jdbc.Driver");
	Connection myconn=null;
	myconn = DriverManager.getConnection("jdbc:mysql://localhost:3306/shoppingmall","root","LNiaMelo561248^*");
	
	String ID = request.getParameter("ID");
	
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	boolean result = false;
	
	try{
		String sql = "select * from User where ID = ?";
		pstmt = myconn.prepareStatement(sql);
		pstmt.setString(1, ID);
		rs = pstmt.executeQuery();
		if(rs.next()){
			result = true;
		}
	}
	catch(SQLException se){
		System.out.println(se.getMessage());
	}
	finally{
		rs.close();
		pstmt.close();
		myconn.close();
	}
	
	response.setContentType("text/xml;charset=UTF-8");
	PrintWriter pw = response.getWriter();
	pw.println("<?xml version=\"1.0\" encoding=\"UTF-8\"?>");
	pw.println("<data>");
	pw.println("<result>"+result+"</rewult>");
	pw.println("</data>");
	pw.close();
	
%>