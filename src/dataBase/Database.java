package dataBase;

import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.SQLException;

public class Database {
    private static Connection connection;
    private static InitialContext context;
    private static DataSource dataSource;

    public static Connection getConnection(){
        try {
            context = new InitialContext();
            dataSource = (DataSource) context.lookup("jdbc/library");
            if(connection == null){
                connection = dataSource.getConnection();
            }
        } catch (NamingException | SQLException e) {
            e.printStackTrace();
        }
        return connection;
    }
}
