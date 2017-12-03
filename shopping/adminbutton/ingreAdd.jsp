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
    <form action = "ingreAddsubmit.jsp" method = "post">
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
          <td>재료이름</td>
          <td><input type = "text", name = "Ingredientname"></td>
          <td>제조사</td>
          <td><input type = "text", name = "Manufacturer"></td>
        </tr>
        <tr>
          <td>사진링크</td>
          <td><input type = "text", name = "ingrepicture"></td>
          <td>장르</td>
          <td><input type = "text", name = "Genre"></td>
        </tr>
        <tr>
          <td>보관방법</td>
          <td><input type = "text", name = "Method_storage"></td>
          <td>손질방법</td>
          <td><input type = "text", name = "Method_cook"></td>
        </tr>
        <tr>
          <td>평균가격</td>
          <td><input type = "text", name = "Prise" value="ex)1000" onFocus="clearText(this)" onBlur = "clearText(this)"></td>
          <td>할인율</td>
          <td><input type = "text", name = "Salespercent" value="ex)40" onFocus="clearText(this)" onBlur = "clearText(this)"></td>
        </tr>
        <tr>
          <td>수량</td>
          <td><input type = "text", name = "amount" value="ex)5" onFocus="clearText(this)" onBlur = "clearText(this)"></td>
        </tr>
      </tbody>
    </table>
    <input type = "submit" value = "추가">
    </form>
  </body>
</html>
