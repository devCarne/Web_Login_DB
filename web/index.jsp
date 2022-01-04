<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2022-01-04
  Time: 오전 9:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <a href="signUp.jsp">회원가입하기</a><br>
  <a href="memberList.jsp">회원리스트</a><br>
  <form action="login.jsp" method="post">
      아이디 : <input type="text" name="loginID">
      비밀번호 : <input type="password" name="loginPassword">
      <input type="submit" value="로그인">
  </form>

  </body>
</html>
