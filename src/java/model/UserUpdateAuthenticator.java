package model;

import db.DBConnector;
import dto.UserDTO;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.http.Part;

public class UserUpdateAuthenticator 
{
    DBConnector db=new DBConnector();
    Connection con=db.getConnection();
    Statement st=db.getStatement();
     
    public boolean isUpdate(UserDTO user)
    {
     String userid=user.getUserid();
     String address=user.getAddress();
     String profession=user.getProfession();
     String contact=user.getContact();
     
     String query="update user set address='"+address+"', contact='"+contact+"', profession='"+profession+"' where userid='"+userid+"'";
     
     try
     {
         int x=st.executeUpdate(query);
         if(x>0)
             return true;
     }
     catch(SQLException e)
     {
         System.out.println(e);
     }
     
    return false;
    }
    
    public boolean isUpdateEmail(UserDTO user)
    {
     String userid=user.getUserid();
     String email=user.getEmail();
     
     DBConnector db=new DBConnector();
     Statement st=db.getStatement();
     
     String query="update user set email='"+email+"' where userid='"+userid+"'";
        
     try
     {
         int x=st.executeUpdate(query);
         if(x>0)
             return true;
     }
     catch(SQLException e)
     {
         System.out.println(e);
     }
     
    return false;
    }
    
    public boolean updateCurrentProfile(UserDTO user) throws IOException
{
        InputStream inputStream = null;
        Part filePart1 = user.getProfile();
        
        String userid=user.getUserid();
        
        if (filePart1 != null)
        {
          inputStream = filePart1.getInputStream();  
        }
        
        try
        {
            String query="update user set profile=? where userid='"+userid+"'";
            con=db.getConnection();
            PreparedStatement ps=con.prepareStatement(query);
            System.out.println(inputStream);
            if (inputStream != null) {
            int length = inputStream.available();
            ps.setBinaryStream(1,inputStream,length);
            }
            
            int a=ps.executeUpdate();
            if(a>0)
            {
                        System.out.println("updated");
                        return true;
            }
            else
            {
                return false;
            }
        }
        catch(SQLException e)
        {
            System.out.println(e);
        }
     
    return false;
}

}
