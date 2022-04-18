package dao;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.WriterException;
import com.google.zxing.client.j2se.MatrixToImageWriter;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.qrcode.QRCodeWriter;
import db.DBConnector;
import dto.VehicleDTO;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.sql.Blob;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class VehicleDAO {
    
    DBConnector db=new DBConnector();
    Statement st=db.getStatement();
    ResultSet rs=null;
    
    public VehicleDTO getVehicleHistory(String chassis_no)
    {
        VehicleDTO vehicle=new VehicleDTO();
        
        String query="SELECT * FROM vehicle_history WHERE vehicle_id='"+chassis_no+"' ORDER  BY date_checked desc,time_checked DESC LIMIT 1,1";
        try
        {
            ResultSet rs=st.executeQuery(query);
            while(rs.next())
            {
                vehicle.setDatechecked(rs.getString("date_checked"));
//                vehicle.setStatus(rs.getString("status_checked"));
                vehicle.setTimechecked(rs.getString("time_checked"));
                vehicle.setPoliceid(rs.getString("police_id"));
                vehicle.setLocationchecked(rs.getString("location_checked"));
            }
        }
        catch(SQLException e)
        {
            System.out.println(e);
        }
       return vehicle;
    }
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
                vehicle.setAddress(rs.getString("address"));
                vehicle.setLicense(rs.getString("license_no"));
                vehicle.setContact1(rs.getString("phone1"));
                vehicle.setEmail(rs.getString("email"));
                vehicle.setRcno(rs.getString("rc_no"));
                vehicle.setVehiclecolor(rs.getString("vehicle_color"));
                vehicle.setRegistrationvalidity(rs.getString("registration_validity"));
                vehicle.setEngineno(rs.getString("engine_no"));
                vehicle.setChassis(rs.getString("chassis_no"));
                Blob blob = rs.getBlob("qr_code");
                vehicle.setByt(blob.getBytes(1, (int) blob.length()));
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
                vehicle.setStatuschecked(rs.getString("status_checked"));
                arraylist.add(vehicle);
            }
        }
        catch(SQLException e)
        {
            System.out.println(e);
        }
        
    return arraylist;
    }
    
    public VehicleDTO getVehicleComplain(String vehicleid)
    {
        VehicleDTO vehicle=new VehicleDTO();
        String query="select * from vehicle_complain where vehicle_id='"+vehicleid+"' order by date_time desc limit 1";
        try
        {
            ResultSet rs=st.executeQuery(query);
            while(rs.next())
            {
                vehicle.setVehicle_complainid(rs.getString("complain_id"));
                vehicle.setPoliceid(rs.getString("police_id"));
                vehicle.setComplain_date_time(rs.getString("date_time"));
                vehicle.setComplain_title(rs.getString("title"));
                vehicle.setComplain_description(rs.getString("description"));
                vehicle.setComplain_category(rs.getString("category"));
            } 
        }
        catch(SQLException e)
        {
            System.out.println(e);
        }
        return vehicle;
    }
    
    public String getOldVehicleDetails(String vehicleno)
    {
        String vehicleid="";
        String query="select * from vehicle_registration where vehicle_no='"+vehicleno+"'";
        try
        {
            ResultSet rs=st.executeQuery(query);
            while(rs.next())
            {
                vehicleid=rs.getString("chassis_no");
            }    
        }  
        catch(SQLException e)
        {
            System.out.println(e);
        }
       return vehicleid;
    }
    
    
    public ArrayList<VehicleDTO> getPendingVehicleList(String userid)
    {
        ArrayList<VehicleDTO> arraylist=new ArrayList<VehicleDTO>();
        String query="select * from vehicle_registration where status_checked='in_progress'";
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
                vehicle.setDealerid(rs.getString("dealerid"));
                arraylist.add(vehicle);
            }
        }
        catch(SQLException e)
        {
            System.out.println(e);
        }
        
        return arraylist;
    }
    
    public ArrayList<VehicleDTO> getCheckedVehicleList()
    {
        ArrayList<VehicleDTO> arraylist=new ArrayList<VehicleDTO>();
        String query="select * from vehicle_registration where not status_checked='in_progress'";
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
                vehicle.setDealerid(rs.getString("dealerid"));
                vehicle.setStatuschecked(rs.getString("status_checked"));
                arraylist.add(vehicle);
            }
        }
        catch(SQLException e)
        {
            System.out.println(e);
        }
        
        return arraylist;
    }
    
    public byte[] getQRCodeImage(String text, int width, int height) throws WriterException, IOException {
        QRCodeWriter qrCodeWriter = new QRCodeWriter();
        BitMatrix bitMatrix = qrCodeWriter.encode(text, BarcodeFormat.QR_CODE, width, height);

        ByteArrayOutputStream pngOutputStream = new ByteArrayOutputStream();
        MatrixToImageWriter.writeToStream(bitMatrix, "PNG", pngOutputStream);
        byte[] pngData = pngOutputStream.toByteArray(); 
        return pngData;
    }
}
