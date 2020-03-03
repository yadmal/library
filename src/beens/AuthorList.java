package beens;

import dataBase.Database;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class AuthorList {
    private ArrayList<Author> authorList = new ArrayList<>();

    private ArrayList<Author> getAuthors(){
        Statement stm = null;
        ResultSet rs = null;
        Connection conn = null;
        try {
            conn = Database.getConnection();
            stm = conn.createStatement();
            rs = stm.executeQuery("select * from author order by fio");
            while (rs.next()){
                Author author = new Author();
                author.setName(rs.getString("fio"));
                authorList.add(author);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if(stm!=null) stm.close();
                if(rs!=null) rs.close();
                if(conn!=null) conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }

        }
        return authorList;
    }

    public ArrayList<Author> getAuthorList(){
        if(!authorList.isEmpty()){
            return authorList;
        } else {
            return getAuthors();
        }
    }
}
