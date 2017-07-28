package userDAO;




import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

@WebListener
public class LoadApp implements ServletContextListener{

    static public Connection conn = null;
    
    @Override
    public void contextInitialized(ServletContextEvent sce) {
        
        try {
            conn = DriverManager.getConnection("jdbc:derby://localhost:1527/hardy_dta","root","root");
        
            if( conn != null )
            {
                   System.out.println("Connected to DB");
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        try {
            conn.close();
            System.out.println("Connection to DB closed");
            
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }
    
}
