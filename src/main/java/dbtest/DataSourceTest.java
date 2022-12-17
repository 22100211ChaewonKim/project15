package dbtest;

//import org.junit.Test;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.SQLException;

public class DataSourceTest {

    @Test
    public void testConnection(){
        ApplicationContext ctx = new FileSystemXmlApplicationContext("src/main/webapp/WEB-INF/applicationContext.xml");
        DataSource dataSource = (DataSource) ctx.getBean("dataSource");

        try{
            Connection con = dataSource.getConnection();
            System.out.println("Connection is successful");
        } catch (SQLException e){
            e.printStackTrace();
        }
    }
}