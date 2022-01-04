<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2022-01-04
  Time: 오전 10:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h2>회원 정보 입력</h2>
    <form action="memberInfo.jsp" method="post">
        아이디 : <input type="text" name="id"><br>
        비밀번호 : <input type="password" name="password"><br>
        성함 : <input type="text" name="name"><br>
        성별 : 남<input type="radio" name="gender" value="남">
               여<input type="radio" name="gender" value="여"><br>
        취미 :
        <input type="checkbox" name="hobby" value="독서">독서
        <input type="checkbox" name="hobby" value="여행">여행
        <input type="checkbox" name="hobby" value="코딩">코딩<br>
        가입 경로 :<br>
        <select name="regPath" size="4" multiple>
            <option value="지인 소개">지인 소개</option>
            <option value="온라인 광고">온라인 광고</option>
            <option value="오프라인 광고">오프라인 광고</option>
            <option value="기타">기타</option>
        </select><br>
        <input type="submit" value="가입하기">
    </form>
</body>
</html>
