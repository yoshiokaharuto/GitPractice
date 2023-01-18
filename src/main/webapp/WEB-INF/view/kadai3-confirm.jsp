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
        <h2>下記の情報を削除します。</h2>
        
        <%
        request.setCharacterEncoding("UTF-8");
        String mail = request.getParameter("mail");
        %>
        <p>メール:<%=  mail %> </p>
        
        <a href="kadai3ExecuteServlet">OK</a> <br>
        <a href="kadai3Servlet">戻る</a> <br>
        
</body>
</html>