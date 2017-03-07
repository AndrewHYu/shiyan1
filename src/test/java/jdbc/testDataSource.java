package jdbc;

import org.apache.commons.dbcp.BasicDataSource;

import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Created by Andrew  on 2017/3/6.
 */
public class TestDataSource {

    private  BasicDataSource dataSource=new BasicDataSource();

    public TestDataSource() {
        dataSource.setDriverClassName("com.mysql.jdbc.Driver");
        dataSource.setUsername("root");
        dataSource.setPassword("330606");
        dataSource.setUrl("jdbc:mysql://127.0.0.1:3306/shiyanke?useUnicode=true&characterEncoding=utf-8&useSSL=false");
    }

    public  java.sql.Connection getConnection() throws SQLException {
        return dataSource.getConnection();
    }

    public static void main(String[] args) throws SQLException {
        TestDataSource testDataSource=new TestDataSource();
        ResultSet resultSet = testDataSource.getConnection().prepareStatement("select * from tb_Customer").executeQuery();
        if (resultSet!=null){
            System.out.println("not null");
        }

    }
}
