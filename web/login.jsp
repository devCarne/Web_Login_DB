        <%@ page import="java.sql.*" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2022-01-04
  Time: 오전 11:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%!
    Connection connection;
    Statement statement;
    ResultSet resultSet;
%>
        <%
            request.setCharacterEncoding("UTF-8");
            try {
                Class.forName("oracle.jdbc.driver.OracleDriver");
                connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "1111");
                statement = connection.createStatement();

                String sql = "SELECT * FROM tbl_members WHERE id = '" + request.getParameter("loginID") + "' AND password = '" + request.getParameter("loginPassword") + "'";
                resultSet = statement.executeQuery(sql);

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
        <th>아이디</th><th>비밀번호</th><th>이름</th><th>성별</th><th>취미</th><th>가입경로</th>
    </tr>
    <%
        try{
            if(resultSet.next()) {
                out.print("로그인에 성공했습니다.");
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
            } else {
                out.print("사용자 정보가 없습니다.");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    %>
</table>
</body>
</html>
