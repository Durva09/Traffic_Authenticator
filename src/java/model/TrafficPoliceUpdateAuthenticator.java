package model;

import db.DBConnector;
import dto.TrafficPoliceDTO;
import java.sql.SQLException;
import java.sql.Statement;

public class TrafficPoliceUpdateAuthenticator {
   
    DBConnector db=new DBConnector();
    Statement st=db.getStatement();
     
    public boolean isUpdateEmail(TrafficPoliceDTO police)
    {
     String userid=police.getUserid();
     String email=police.getEmail();
     
     String query="update demo_traffic_police set email='"+email+"' where police_id='"+userid+"'";
        
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
    
    public boolean isUpdate(TrafficPoliceDTO traffic)
    {
     String userid=traffic.getUserid();
     String contact=traffic.getContact();
     String address=traffic.getAddress();
     
     String query="update demo_traffic_police set contact='"+contact+"',address='"+address+"' where police_id='"+userid+"'";
     
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
}
