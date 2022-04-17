package model;

import db.DBConnector;
import dto.UserDTO;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class UserLoginAuthenticator 
{
  public String isLogin(UserDTO user)
  {
    DBConnector db=new DBConnector();
    Statement st=db.getStatement();
    
    String userid=user.getUserid();
    String password=user.getPassword();
    String mode=user.getMode();           
    
    String query="";
    String tablepassword="";
    
    if(mode.equals("aadhar"))
    {
        query ="select password from user where aadhar_no='"+userid+"'";
    }
    else
    {
        query ="select password from user where userid='"+userid+"'";
    }
      System.out.println(query);
    try
    {
        ResultSet rs=st.executeQuery(query);
        if(rs.next())
        {
            tablepassword=rs.getString("password"); 
            if(userid!=null && password!=null && !userid.equals("")&& password.equals(tablepassword))
            {
                if(mode.equals("aadhar"))
                {
                    query ="select userid from user where aadhar_no='"+userid.trim()+"'";
                    rs=st.executeQuery(query);
                    if(rs.next())
                    {
                        return rs.getString("userid");
                    }
                }
             return userid;
            }
        }
    }
    catch(SQLException e)
    {
        System.out.println(e);
    }
    
  return "false";
  }
}
