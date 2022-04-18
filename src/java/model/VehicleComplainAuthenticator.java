package model;

import db.DBConnector;
import dto.VehicleDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;


public class VehicleComplainAuthenticator {
    
    DBConnector db=new DBConnector();
    Connection con=db.getConnection();
    
    public boolean isregisterComplain(VehicleDTO vehicle)
    {
         String vehicleid=vehicle.getChassis();
         String policeid=vehicle.getPoliceid();
         String complain_category=vehicle.getComplain_category();
         String complain_title=vehicle.getComplain_title();
         String complain_description=vehicle.getComplain_description();
         String date_time=vehicle.getComplain_date_time();
         try
         {
             String query="insert into vehicle_complain values(?,?,?,?,?,?,?)";
             PreparedStatement ps=con.prepareStatement(query);
             ps.setString(1,"0");
             ps.setString(2,policeid);
             ps.setString(3,vehicleid);
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
