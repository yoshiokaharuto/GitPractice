<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="dto.Kadai" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
        <h2>下記の情報を登録します。</h2>
        
        <%
        Kadai form = (Kadai)session.getAttribute("input_data");
        %>
        名前:<%= form.getName() %> <br>
        年齢:<%= form.getAge() %> <br>
        性別:<%= form.getGender() %> <br>
        電話番号:<%= form.getNumber() %> <br>
        メール:<%= form.getMail() %> <br>
        パスワード:************ <br>
        
        <a href="kadai1ExecuteServlet">OK</a> <br>
        <a href="kadai1Servlet">戻る</a> <br>
</body>
</html>