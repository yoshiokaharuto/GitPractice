<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "dto.Kadai" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    
       <%
         request.setCharacterEncoding("UTF-8");
         String errorCode = request.getParameter("error");
         if(errorCode != null && errorCode.equals("1")) {
        	 Kadai ac = (Kadai)session.getAttribute("input_data");
       %>
       <p style="color:red">登録に失敗しました。</p>
       <h3>新規会員登録</h3>
        <form action="kadai1ConfirmServlet" method="post">
      
      名前:<input type="text" name="name"> <br>
      年齢:<input type="text" name="age">  <br>
      性別: <br>
      <input type="radio" name="gender" value="男">男 
      <input type="radio" name="gender" value="女">女 <br>
      
      電話番号:<input type="text" name="number" > <br>
      メール:<input type="email" name="email"> <br>
      パスワード:<input type="password" name="password"> <br>
      
      <input type="submit" value="送信"> <br>
      </form>
   
      <%
         } else {
      %>
      <h3>新規会員登録</h3> 
      <form action="kadai1ConfirmServlet" method="post">
      
      名前:<input type="text" name="name"> <br>
      年齢:<input type="text" name="age">  <br>
      性別: <br>
      <input type="radio" name="gender" value="男">男 
      <input type="radio" name="gender" value="女">女 <br>
      
      電話番号:<input type="text" name="number" > <br>
      メール:<input type="email" name="email"> <br>
      パスワード:<input type="password" name="password"> <br>
      
      <input type="submit" value="送信"> <br>
      </form>
      <%
          }
      %>
      
</body>
</html>