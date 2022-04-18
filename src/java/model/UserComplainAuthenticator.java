package model;

import db.DBConnector;
import dto.UserDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;


public class UserComplainAuthenticator {
    
    DBConnector db=new DBConnector();
    Connection con=db.getConnection();
    
    public boolean isregisterComplain(UserDTO user)
    {
         String userid=user.getUserid();
         String policeid=user.getPoliceid();
         String complain_category=user.getComplain_category();
         String complain_title=user.getComplain_title();
         String complain_description=user.getComplain_description();
         String date_time=user.getComplain_date_time();
         try
         {
             String query="insert into user_complain values(?,?,?,?,?,?,?)";
             PreparedStatement ps=con.prepareStatement(query);
             ps.setString(1,"0");
             ps.setString(2,policeid);
             ps.setString(3,userid);
             ps.setString(4,date_time);
             ps.setString(5,complain_title);
             ps.setString(6,complain_category);
             ps.setString(7,complain_description);
             int x=ps.executeUpdate();
             if(x>0)
             {
                 return true;
             }
         }
         catch(SQLException e)
         {
             System.out.println(e);
         }
        return false; 
    }
}
