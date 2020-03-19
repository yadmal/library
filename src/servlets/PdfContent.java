package servlets;

import beans.Book;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.logging.Level;
import java.util.logging.Logger;

public class PdfContent extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Logger.getLogger(PdfContent.class.getName()).log(Level.WARNING, "WWWWWWWWWWWWWWWWWWWWW PDF CONTENT GET");
        processRequest(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Logger.getLogger(PdfContent.class.getName()).log(Level.WARNING, "WWWWWWWWWWWWWWWWWWWWW PDF CONTENT POST");
        processRequest(req, resp);
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws IOException {
        Logger.getLogger(PdfContent.class.getName()).log(Level.WARNING, "WWWWWWWWWWWWWWWWWWWWW PDF CONTENT processRequest");
        response.setContentType("application/pdf");
        OutputStream out = response.getOutputStream();
        try {
            int index = Integer.valueOf(request.getParameter("index"));
            HashMap sessionMap = (HashMap) getServletContext().getAttribute("sessionMap");
            HttpSession session = (HttpSession) sessionMap.get(request.getParameter("session_id"));
            ArrayList<Book> list = (ArrayList<Book>) session.getAttribute("currentBookList");
            Book book = list.get(index);
            book.fillPdfContent();
//            response.setContentLength(book.getContent().length);
//            String arr = new String(book.getContent());
            out.write(book.getContent());
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            out.close();
        }
    }
}
