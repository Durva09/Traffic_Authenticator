package dao;

import db.DBConnector;
import dto.TrafficPoliceDTO;
import dto.UserDTO;
import dto.VehicleDTO;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;


public class TrafficPoliceDAO {
    
    
    DBConnector db=new DBConnector();
    Statement st=db.getStatement();
    ResultSet rs=null;
    
    public TrafficPoliceDTO getTrafficPoliceData(String userid)
    {
        TrafficPoliceDTO police=new TrafficPoliceDTO();
        String query="select * from demo_traffic_police where police_id='"+userid+"'";
        
        try
        {
            ResultSet rs=st.executeQuery(query);
            while(rs.next())
            {
                police.setName(rs.getString("name"));
                police.setEmail(rs.getString("email"));
                police.setDob(rs.getString("dob"));
                police.setZone(rs.getString("zone"));
                police.setContact(rs.getString("contact"));
                police.setAddress(rs.getString("address"));
                police.setAadharno(rs.getString("aadhar_no"));
                police.setUserid(rs.getString("police_id"));
            }
        }
        catch(SQLException e)
        {
            System.out.println(e);
        }
      return police;
    }
    
    public ArrayList<VehicleDTO> getVehicleHistoryList(String userid)
    {
        ArrayList<VehicleDTO> arraylist=new ArrayList<VehicleDTO>();
        String query="select * from vehicle_history where police_id='"+userid+"'";
        try
        {
            ResultSet rs=st.executeQuery(query);
            while(rs.next())
            {
                VehicleDTO vehicle=new VehicleDTO();
                vehicle.setPoliceid(userid);
                vehicle.setChassis(rs.getString("vehicle_id"));
                vehicle.setDatechecked(rs.getString("date_checked"));
                vehicle.setTimechecked(rs.getString("time_checked"));
                arraylist.add(vehicle);
            }
        }
        catch(SQLException e)
        {
            System.out.println(e);
        }
        
        return arraylist;
    }
    
    public ArrayList<UserDTO> getUserHistoryList(String userid)
    {
        ArrayList<UserDTO> arraylist=new ArrayList<UserDTO>();
        String query="select * from user_history where police_id='"+userid+"'";
        try
        {
            ResultSet rs=st.executeQuery(query);
            while(rs.next())
            {
                UserDTO user=new UserDTO();
                user.setPoliceid(userid);
                user.setUserid(rs.getString("user_id"));
                user.setDatechecked(rs.getString("date_checked"));
                user.setTimechecked(rs.getString("time_checked"));
                user.setStats(rs.getString("current_stat"));
                arraylist.add(user);
            }
        }
        catch(SQLException e)
        {
            System.out.println(e);
        }
        
        return arraylist;
    }
}
