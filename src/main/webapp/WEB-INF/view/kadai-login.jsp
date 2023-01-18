<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

		<%
		request.setCharacterEncoding("UTF-8");
		if(request.getParameter("error") !=null) {
		%>
		 <p>ログイン失敗</p> <br>
         <form action="kadaiLoginServlet" method="post">
		【メールアドレスとパスワードを入力してください。】 <br>
         
         メール: <input type="email" name="mail" value="<%=request.getParameter("mail") %>"> <br>
          PW:    <input type="password" name="pw"> <br>
         
                 <input type="submit" value="ログイン"> <br>
         </form>
         <%
		    } else {
         %>
         <form action="kadaiLoginServlet" method="post">
         【メールアドレスとパスワードを入力してください。】 <br>
         メール: <input type="email" name="mail"> <br>
          PW:    <input type="password" name="pw"> <br>
         
                 <input type="submit" value="ログイン"> <br>
         </form>
          
          <%
		          }
          %>
</body>
</html>