<%@ page import="java.sql.*" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2022-01-04
  Time: 오전 11:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%!
    Connection connection;
    Statement statement;
    ResultSet resultSet;
%>
<%
    try {
        Class.forName("oracle.jdbc.driver.OracleDriver");
        connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "1111");
        statement = connection.createStatement();
        resultSet = statement.executeQuery("SELECT * FROM tbl_members");
    } catch (ClassNotFoundException | SQLException e) {
        e.printStackTrace();
    }
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table border="1">
    <tr>
        <th>아이디</th><th>비밀번호</th><th>이름</th><th>서별</th><th>취미</th><th>가입경로</th>
    </tr>
    <%
        try {
            while (resultSet.next()) {
    %>
    <tr>
        <td><%= resultSet.getString(1) %></td>
        <td><%= resultSet.getString(2) %></td>
        <td><%= resultSet.getString(3) %></td>
        <td><%= resultSet.getString(4) %></td>
        <td><%= resultSet.getString(5) %></td>
        <td><%= resultSet.getString(6) %></td>
    </tr>
    <%
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    %>
</table>
</body>
</html>
