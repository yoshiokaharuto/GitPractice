<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %> 
<%@ page import = "dto.Kadai" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<h2>一覧表示</h2> <br>
		<table border=1>
		  <tr> 	
			<th>氏名</th>
			<th>年齢</th>
			<th>性別</th>
			<th>電話番号</th>
			<th>メール</th>
		  </tr>
		  <%
		  List<Kadai> list = (ArrayList<Kadai>) request.getAttribute("list");
		  for(Kadai a : list){
		  %>
		  <tr>
		    <td><%= a.getName() %></td>
		    <td><%= a.getAge() %></td>
		    <td><%= a.getGender() %></td>
		    <td><%= a.getNumber() %></td>
		    <td><%= a.getMail() %></td>
		  </tr>  
		  
		  <%} %>
		  	
		</table> <br>
		<a href="./">戻る</a>
</body>
</html>