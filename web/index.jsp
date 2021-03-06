<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Онлайн библиотека::Вход</title>
    <link href="css/style_index.css" rel="stylesheet" type="text/css">
</head>

<body>
<div class="main">

    <div class="content">
        <p class="title"><span class="text"><img src="images/lib.png" width="76" height="77" hspace="10" vspace="10" align="middle"></span></p>
        <p class="title">Онлайн библиотека</p>
        <p class="text">Добро пожаловать в онлайн библиотеку, где вы сможете найти любую книгу на ваш вкус. Доступны функции поиска, просмотра, сортировки и многие другие.</p>
        <p class="text">Проект находится в разработке, поэтому дизайн и функционал будет постоянно дорабатываться.</p>
        <p class="text">По всем вопросам обращайтесь по адресу <a href="mailto:support@testlibrary.com">support@testlibrary.com</a></p>
        <p>&nbsp;</p>

    </div>

    <div class="login_div">
        <p class="title">Для входа введит свои данные:</p>
        <form class="login_form" name="username" action="pages/main.jsp" method="POST">
            Имя: <input type="text" name="username" value="" size="20" />
            <input type="submit" value="Войти" />
        </form>

    </div>

    <div class="footer">
        Разработчик: Иван Иванов
    </div>
</div>


</body>
</html>


<%--<%@ page import="beans.AuthorList" %>--%>
<%--<%@ page import="beans.Author" %>--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <title>Title</title>--%>
<%--    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style_index.css">--%>
<%--</head>--%>
<%--<body>--%>
<%--<img src="${pageContext.request.contextPath}/images/23.jpg">--%>
<%--<h1>Онлайн библиотека</h1>--%>
<%--<div>--%>
<%--    Тут можно найти книги на любой вкус--%>
<%--</div>--%>
<%--<div>Проект в разработке</div>--%>
<%--<div>По всем вопросам писать на mail@mail.com</div>--%>
<%--<div>--%>
<%--    <ul>--%>
<%--        <%  AuthorList authorList = new AuthorList();--%>
<%--            for (Author author : authorList.getAuthorList()) {--%>
<%--        %>--%>
<%--        <li><a href="#"><%= author.getName() %></a></li>--%>
<%--        <%}%>--%>

<%--    </ul>--%>
<%--</div>--%>
<%--<div>--%>
<%--    Форма для входа--%>
<%--</div>--%>
<%--<form action="pages/main.jsp" method="GET">--%>
<%--    <input type="text" name="username"> <br>--%>
<%--    <input type="submit" value="Войти">--%>
<%--</form>--%>
<%--</body>--%>
<%--</html>--%>
