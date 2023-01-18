<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "dto.Kadai"%>    
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
       <p style="color:red">削除に失敗しました。</p> <br>
        <h2>削除するメールを入力してください。</h2> <br>
         
         <form action="kadai3FormServlet" method="post">
         
         <input type="email" name="mail"> <br>
         
         <input type="submit" value="削除"> <br>
         
         </form>
      <%
         } else {
      %>

         <h2>削除するメールを入力してください。</h2>
         
         <form action="kadai3FormServlet" method="post">
         
         <input type="email" name="mail"> <br>
         
         <input type="submit" value="削除"> <br>
         
         </form>
         <%
         }
         %>
</body>
</html>