<%--
  Created by IntelliJ IDEA.
  User: Dmitry
  Date: 02.03.2020
  Time: 18:11
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="beens.Author"%>
<%@page import="beens.AuthorList"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Онлайн библиотека</title>
    <link href="../css/style_main.css" rel="stylesheet" type="text/css">
</head>
<body>

<div class="container">


    <div class="header">
        <div class="logo">
            <img src="../images/library.png" alt="Логотип" name="logo" />

        </div>
        <div class="descr">
            <h3>Онлайн библиотека проекта javabegin.ru</h3>
        </div>
        <div class="search_form">
            <form name="search_form" method="POST">
                <input type="text" name="search_String" value="" size="110" />
                <input class="search_button" type="submit" value="Поиск" name="search_button" />
                <select name="search_option">
                    <option>Название</option>
                    <option>Автор</option>
                </select>
            </form>
        </div>
    </div>

    <div class="sidebar1">
        <h4>Список авторов:</h4>
        <ul class="nav">
            <jsp:useBean id="authorList" class="beens.AuthorList" scope="application"/>
            <c:forEach var="author" items="${authorList.getAuthorList()}">

                <li><a href="#">${author.name}</a></li>

            </c:forEach>
        </ul>
        <p>&nbsp;</p>
    </div>


    <div class="content">
        <h1>&nbsp;</h1>
        <p>&nbsp;</p>
    </div>



</div><!-- end .container -->

</body>
</body>

</body>
</html>

<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <title>Title</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<% request.setCharacterEncoding("UTF-8");%>--%>
<%--<%= request.getParameter("username")%>--%>

<%--</body>--%>
<%--</html>--%>
