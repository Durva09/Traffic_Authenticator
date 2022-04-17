
package dao;

import db.DBConnector;
import dto.VehicleDTO;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class VehicleDAO {
    
    DBConnector db=new DBConnector();
    Statement st=db.getStatement();
    ResultSet rs=null;
    
    public VehicleDTO getVehicleDetails(String chassis_no)
    {
        VehicleDTO vehicle=new VehicleDTO();
        String query="select * from vehicle_registration where chassis_no='"+chassis_no+"'";
        try
        {
            ResultSet rs=st.executeQuery(query);
            while(rs.next())
            {
                vehicle.setName(rs.getString("owner_name"));
                vehicle.setVehicleno(rs.getString("vehicle_no"));
                vehicle.setVehicletype(rs.getString("vehicle_type"));
                vehicle.setPurchaseDate(rs.getString("date_of_registration"));
                vehicle.setModelno(rs.getString("model_no"));
                vehicle.setVehiclecompany(rs.getString("vehicle_company"));
                vehicle.setVehicleno(rs.getString("vehicle_no"));
                vehicle.setAddress(rs.getString("address"));
                vehicle.setLicense(rs.getString("license_no"));
                vehicle.setContact1(rs.getString("phone1"));
                vehicle.setEmail(rs.getString("email"));
                vehicle.setPurchaseDate(rs.getString("date_of_registration"));
                vehicle.setRcno(rs.getString("rc_no"));
                vehicle.setVehicletype(rs.getString("vehicle_type"));
                vehicle.setRegistrationvalidity(rs.getString("registration_validity"));
                vehicle.setChassis(rs.getString("chassis_no"));
            }    
        }  
        catch(SQLException e)
        {
            System.out.println(e);
        }
       return vehicle;
    }
    public ArrayList<VehicleDTO> getVehicleList(String userid)
    {
        ArrayList<VehicleDTO> arraylist=new ArrayList<VehicleDTO>();
        String query="select * from vehicle_registration where dealerid='"+userid+"'";
        try
        {
            ResultSet rs=st.executeQuery(query);
            while(rs.next())
            {
                VehicleDTO vehicle=new VehicleDTO();
                vehicle.setName(rs.getString("owner_name"));
                vehicle.setVehicleno(rs.getString("vehicle_no"));
                vehicle.setVehicletype(rs.getString("vehicle_type"));
                vehicle.setPurchaseDate(rs.getString("date_of_registration"));
                vehicle.setModelno(rs.getString("model_no"));
                vehicle.setChassis(rs.getString("chassis_no"));
                arraylist.add(vehicle);
            }
        }
        catch(SQLException e)
        {
            System.out.println(e);
        }
        
    return arraylist;
    }
}
