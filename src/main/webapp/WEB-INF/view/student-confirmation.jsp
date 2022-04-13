<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 31010-67-02
  Date: 13/04/2022
  Time: 13:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Student Confirmation</title>
</head>
<body>

the student is confirmed: ${student.firstname} ${student.lastname}
<br/>
Country: ${student.country}
<br/>
<br/>

Favorite Language: ${student.favoriteLanguage}

<br/>
<br/>

OS :

<ul>
    <c:forEach var="temp" items="${student.operatingSystems}">
    <li>${temp}</li>
    </c:forEach>
</ul>

</body>
</html>
