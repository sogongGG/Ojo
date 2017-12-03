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
    <form action = "foodAddsubmit.jsp" method = "post">
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
          <td>요리 이름</td>
          <td><input type = "text", name = "Foodname"></td>
          <td>장르</td>
          <td><input type = "text", name = "Genre"></td>
        </tr>
        <tr>
          <td>사진 링크</td>
          <td><input type = "text", name = "foodpicture"></td>
          <td>요리 설명</td>
          <td><input type = "text", name = "Explanation"></td>
        </tr>
        <tr>
          <td>요리 시간</td>
          <td><input type = "text", name = "Expectedtime" value="ex)00:00:00" onFocus="clearText(this)" onBlur = "clearText(this)"></td>
          <td>필요한 재료 리스트</td>
          <td><input type = "text", name = "Needingredients" value="ex)a,b,c,d,e,f" onFocus="clearText(this)" onBlur = "clearText(this)"></td>
        </tr>
        <tr>
          <td>평점</td>
          <td><input type = "text", name = "Point" value="ex)5" onFocus="clearText(this)" onBlur = "clearText(this)"></td>
        </tr>
      </tbody>
    </table>
    <input type = "submit" value = "추가">
    </form>
  </body>
</html>
