package dao;

import db.DBConnector;
import dto.UserDTO;
import java.sql.Blob;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Arrays;
import java.util.Date;

public class UserDAO 
{
    DBConnector db=new DBConnector();
    Statement st=db.getStatement();
    
    public boolean checkEmail(String email)
    {
        String query="select * from user where email='"+email+"'";
        
        try
        {
            ResultSet rs=st.executeQuery(query);
            if(rs.next())
            {
                return false;
            }
        }
        catch(SQLException e)
        {
            System.out.println(e);
        }
        return true;
    }
    
    public String getUserAddress(String aadhar)
    {
        String query="select address from uidai where aadhar_no='"+aadhar+"'";
        String address="";
        try
        {
            ResultSet rs=st.executeQuery(query);
            if(rs.next())
            {
                address=rs.getString("address");
            }
        }
        catch(SQLException e)
        {
            System.out.println(e);
        }
        return address;
    }
    
    public byte[] getUserProfile(String userid)
    {
        byte byteArray[]={0};
        try
        {
            String query ="select * from user where userid='"+userid+"'";
            ResultSet rs = st.executeQuery(query);
            if (rs.next()) {
                Blob blob = rs.getBlob("profile");
                byteArray = blob.getBytes(1, (int) blob.length());
            }
        }
        catch (Exception e) 
        {
            System.out.println(e);
        }
        return byteArray;
    }
    
    public UserDTO getUserData(String userid)
    {
        UserDTO user=new UserDTO();
        String query="select * from user where userid='"+userid+"'";
        /*Additional Code To Get The Age Of The Uesr*/
        String birthyear = "";
        String dob = "";
        try
        {
            ResultSet rs=st.executeQuery(query);
            while(rs.next())
            {
                user.setName(rs.getString("name"));
                user.setAadhar(rs.getString("aadhar_no"));
                user.setContact(rs.getString("contact"));
                user.setDob(rs.getString("dob"));
                user.setEmail(rs.getString("email"));
                user.setGender(rs.getString("gender"));
                user.setUserid(rs.getString("userid"));
                user.setAddress(rs.getString("address"));
                user.setProfession(rs.getString("profession"));
                /*Additional Code To Get The Age Of The Uesr*/
                dob = rs.getString("dob");
            }
            
            /*Additional Code To Get The Age Of The Uesr*/
            Date d=new Date();
            int year=d.getYear()+1900; //Getting the current year
            birthyear = ""+dob.charAt(0)+dob.charAt(1)+dob.charAt(2)+dob.charAt(3); //Getting the year of birth
            year = year - Integer.parseInt(birthyear); //Getting the age
            birthyear = ""+year;
            user.setAge(birthyear); //Setting the age in UserDTO
        }
        catch(SQLException e)
        {
            System.out.println(e);
        }
      return user;
    }
}
