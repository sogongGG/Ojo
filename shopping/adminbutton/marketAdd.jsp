<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>세부추가내용</title>
  </head>
  <script type="text/javascript">
      function clearText(field){
        if (field.defaultValue == field.value) field.value = '';
        else if (field.value == '') field.value = field.defaultValue;
      }
  </script>
  <body>
    <h1>세부 추가 항목</h1>
    <form action = "marketAddsubmit.jsp" method = "post">
    <table>
      <thead>
        <tr>
          <th>항목</th>
          <th>내용</th>
          <th>항목</th>
          <th>내용</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td>마트 이름</td>
          <td><input type = "text", name = "Marketname"></td>
          <td>마트 지점</td>
          <td><input type = "text", name = "Marketbranch"></td>
        </tr>
        <tr>
          <td>사진링크</td>
          <td><input type = "text", name = "marketpicture"></td>
          <td>마트 번호</td>
          <td><input type = "text", name = "Marketphonenum"  value="00)-0000-0000" onFocus="clearText(this)" onBlur = "clearText(this)"></td>
        </tr>
        <tr>
          <td>마트 주소</td>
          <td><input type = "text", name = "Marketaddress"></td>
          <td>마트 좌표</td>
          <td><input type = "text", name = "Marketcoordinate"></td>
        </tr>
        <tr>
          <td>마트 재료</td>
          <td><input type = "text", name = "Market_ingredient"></td>
        </tr>
      </tbody>
    </table>
    <input type = "submit" value = "추가">
    </form>
  </body>
</html>
