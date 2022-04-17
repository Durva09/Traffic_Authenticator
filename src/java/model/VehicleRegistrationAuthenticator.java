package model;

import db.DBConnector;
import dto.VehicleDTO;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.time.LocalDate;
import javax.servlet.http.Part;

public class VehicleRegistrationAuthenticator {
    
    DBConnector db=new DBConnector();
    Connection con=db.getConnection();
    
    public boolean isRegister(VehicleDTO vehicle) throws IOException
    {   
        InputStream inputStream = null;
        Part filePart1 = vehicle.getVehicleimage();
        int length=0;
        
        if (filePart1 != null)
        {
          inputStream = filePart1.getInputStream(); 
          length = inputStream.available();
        }
        
        try
        {
        PreparedStatement ps=con.prepareStatement("insert into vehicle_registration values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
        ps.setString(1,vehicle.getSoldby());
        ps.setString(2,vehicle.getName());
        ps.setString(3,vehicle.getFname());
        ps.setString(4,vehicle.getDob());
        ps.setString(5,vehicle.getAddress());
        ps.setString(6,vehicle.getState());
        ps.setString(7,vehicle.getCity());
        ps.setString(8,vehicle.getPincode());
        ps.setString(9,vehicle.getContact1());
        ps.setString(10,vehicle.getContact2());
        ps.setString(11,vehicle.getEmail());
        ps.setString(12,vehicle.getAadhar());
        ps.setString(13,vehicle.getLicense());
        ps.setString(14,vehicle.getVehicleno());
        ps.setString(15,vehicle.getEngineno());
        ps.setString(16,vehicle.getChassis());
        ps.setString(17,vehicle.getShowroom_address());
        ps.setString(18,vehicle.getRcno());
        ps.setString(19,vehicle.getEnginetype());
        ps.setString(20,vehicle.getVehiclecompany());
        ps.setString(21,vehicle.getModelno());
        ps.setString(22,vehicle.getRtoname());
        ps.setString(23,vehicle.getYearofmanufacture());
        ps.setString(24,vehicle.getVehiclecolor());
        ps.setString(25,vehicle.getRegistrationvalidity());
        ps.setString(26,vehicle.getVehicletype());
        ps.setBinaryStream(27,inputStream,length);
        ps.setString(28,vehicle.getDealerid());
        ps.setString(29,vehicle.getPurchaseDate());
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
