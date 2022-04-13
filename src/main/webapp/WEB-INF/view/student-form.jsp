<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: 31010-67-02
  Date: 13/04/2022
  Time: 13:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        .error {color:red}
    </style>
</head>
<body>

    <form:form action="processForm" modelAttribute="student">

        First name: <form:input path="firstname"/>
        <br/>
        Last name (*): <form:input path="lastname"/>
        <form:errors path="lastname" cssClass="error"/>
        <br/>
        <br/>
        Free passes: <form:input path="freePasses"/>
        <form:errors cssClass="error" path="freePasses"/>
        <br/>
        <br/>
        Postal Code: <form:input path="postalCode"/>
        <form:errors path="postalCode" cssClass="error"/>
        <br/>
        <br/>
        Country:
        <form:select path="country">
<%--            <form:option value="Brazil" label="Brazil"/>--%>
<%--            <form:option value="France" label="France"/>--%>
<%--            <form:option value="Germany" label="Germany"/>--%>
<%--            <form:option value="India" label="India"/>--%>
            <form:options items="${student.countryOptions}"/>
        </form:select>
        <br/><br/>
        Favorite Language:
        <br/><br/>
<%--        Java<from:radiobutton path="favoriteLanguage" value="Java"/>--%>
<%--        C#<from:radiobutton path="favoriteLanguage" value="C#"/>--%>
<%--        PHP<from:radiobutton path="favoriteLanguage" value="PHP"/>--%>
<%--        Ruby<from:radiobutton path="favoriteLanguage" value="Ruby"/>--%>

        <form:radiobuttons path="favoriteLanguage" items="${student.favoriteLanguageOptions}"  />
        <br/>
        <br/>
        OS :
        <br/>
        <br/>
        Linux <form:checkbox path="operatingSystems" value="Linux"/>
        Mac <form:checkbox path="operatingSystems" value="Mac"/>
        Windows <form:checkbox path="operatingSystems" value="Windows"/>
        <br/>

        <input type="submit" value="Submit"/>


    </form:form>

</body>
</html>
