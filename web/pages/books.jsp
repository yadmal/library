<%@ page import="beans.Book" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="enums.SearchType" %>
<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<%@include file="../WEB-INF/jspf/left_menu.jspf"%>

<%--<%request.setCharacterEncoding("UTF-8");%>--%>

<jsp:useBean id="bookList" class="beans.BookList" scope="page"/>

<%@include file="../WEB-INF/jspf/letters.jspf" %>

<div class="book_list">

    <%         ArrayList<Book> list = null;
        if (request.getParameter("genre_id") != null) {
            long genreId = Long.valueOf(request.getParameter("genre_id"));
            list = bookList.getBooksByGenre(genreId);
        } else if (request.getParameter("letter") != null) {
            String letter = request.getParameter("letter");
            list = bookList.getBooksByLetter(letter);
        } else if (request.getParameter("search_string") != null) {
            String searchStr = request.getParameter("search_string");
            SearchType type = SearchType.TITLE;
            if (request.getParameter("search_option").equals("Автор")) {
                type = SearchType.AUTHOR;
            }

            if (searchStr != null && !searchStr.trim().equals("")) {
                list = bookList.getBooksBySearch(searchStr, type);
            }
        }
    %>
    <h3>${param.name}</h3>
    <table cellpadding="30" style="font-size: 12px;">
        <p>Найдено книг : <%= list.size()%></p>
        <%
            session.setAttribute("currentBookList", list);
            for (Book book : list) {

        %>
        <tr>
            <td style="width:400px;height: 100px;">
                <p style="color:#378de5 ;font-weight: bold; font-size: 15px;"><a href="content.jsp?index=<%=list.indexOf(book)%>"><%=book.getName()%></a></p>
                <br><strong>ISBN:</strong> <%=book.getIsbn()%>
                <br><strong>Издательство:</strong> <%=book.getPublisher() %>

                <br><strong>Количество страниц:</strong> <%=book.getPageCount() %>
                <br><strong>Год издания:</strong> <%=book.getPublishDate() %>
                <br><strong>Автор:</strong> <%=book.getAuthor() %>
                <p style="margin:10px;"> <a href="content.jsp?index=<%=list.indexOf(book)%>">Читать</a></p>
            </td>
            <td style="width:150px;height: 100px;">
                <a href="content.jsp?index=<%=list.indexOf(book)%>"><img src="<%=request.getContextPath()%>/ShowImage?index=<%=list.indexOf(book)%>" alt="Обложка" height="250" width="190"></a>
            </td>
        </tr>
        <%}%>
    </table>
</div>