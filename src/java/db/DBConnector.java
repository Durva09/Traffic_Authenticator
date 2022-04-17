package db;

import java.sql.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnector 
{
static Connection con=null;
static Statement st=null;

static
{
    try
    {
        Class.forName("com.mysql.jdbc.Driver");
    }
    catch(ClassNotFoundException e)
    {
        System.out.println(e);
    }
    try
    {
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/traffic_authentication","root","root");
        st=con.createStatement();  
    }
    catch(SQLException e)
    {
        System.out.println(e);  
    }
}
public Connection getConnection()
    {
        return con;
    }
public Statement getStatement()
{
    return st;
}
}
