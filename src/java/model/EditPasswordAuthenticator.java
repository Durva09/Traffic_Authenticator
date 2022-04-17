package model;

import db.DBConnector;
import dto.DealerDTO;
import dto.UserDTO;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class EditPasswordAuthenticator 
{
    public boolean isEdit(UserDTO user)
    {
        String current=user.getPassword();
        String newpass=user.getNewpass();
        String userid=user.getUserid();
        String tablecurrent="";
        
        DBConnector db=new DBConnector();
        Statement st=db.getStatement();
        
        String query="select password from user where userid='"+userid+"'";
        try
        {
            ResultSet rs=st.executeQuery(query);
            if(rs.next())
            {
                tablecurrent=rs.getString("password");
                if(tablecurrent.equals(current))
                {
                    query="update user set password='"+newpass+"' where userid='"+userid+"'";
                    int x=st.executeUpdate(query);
                    if(x>0)
                    {
                        return true;
                    }
                }
            }
        }
        catch(SQLException e)
        {
            System.out.println(e);
        }
    return false;
    }
    
    public boolean isEdit(DealerDTO dealer)
    {
        String current=dealer.getPassword();
        String newpass=dealer.getNewpass();
        String userid=dealer.getUserid();
        String tablecurrent="";
        
        DBConnector db=new DBConnector();
        Statement st=db.getStatement();
        
        String query="select password from demo_dealer where userid='"+userid+"'";
        try
        {
            ResultSet rs=st.executeQuery(query);
            if(rs.next())
            {
                tablecurrent=rs.getString("password");
                if(tablecurrent.equals(current))
                {
                    query="update demo_dealer set password='"+newpass+"' where userid='"+userid+"'";
                    int x=st.executeUpdate(query);
                    if(x>0)
                    {
                        return true;
                    }
                }
            }
        }
        catch(SQLException e)
        {
            System.out.println(e);
        }
    return false;
    }
    
}
