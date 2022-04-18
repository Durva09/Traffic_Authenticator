
package model;

import db.DBConnector;
import dto.RtoDTO;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;


public class RtoVehicleVerificationAuthenticator {
    
    public boolean updatePendingList(RtoDTO dto)
    {
        DBConnector db = new DBConnector();
        Statement st = db.getStatement();
        
        String category = dto.getCategory();
        String vehicleid = dto.getVehicleid();
        
        try
        {
            String query = "update vehicle_registration set status_checked='"+category+"' where chassis_no='"+vehicleid+"'";
            
            int x = st.executeUpdate(query);
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
