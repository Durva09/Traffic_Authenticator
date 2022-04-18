package dao;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.WriterException;
import com.google.zxing.client.j2se.MatrixToImageWriter;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.qrcode.QRCodeWriter;
import db.DBConnector;
import dto.UserDTO;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.sql.Blob;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
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
                Blob blob = rs.getBlob("qr_code");
                user.setByt(blob.getBytes(1, (int) blob.length()));
            }
        }
        catch(SQLException e)
        {
            System.out.println(e);
        }
      return user;
    }
    
    public UserDTO getUserHistory(String user_id)
    {
        UserDTO user=new UserDTO();
        
        String query="SELECT * FROM user_history WHERE user_id='"+user_id+"' ORDER  BY date_checked desc,time_checked DESC LIMIT 1,1";
        try
        {
            ResultSet rs=st.executeQuery(query);
            while(rs.next())
            {
                user.setDatechecked(rs.getString("date_checked"));
//                vehicle.setStatus(rs.getString("status_checked"));
                user.setTimechecked(rs.getString("time_checked"));
                user.setPoliceid(rs.getString("police_id"));
                user.setLocationchecked(rs.getString("location_checked"));
                user.setStats(rs.getString("current_stat"));
            }
        }
        catch(SQLException e)
        {
            System.out.println(e);
        }
       return user;
    }
    
    public UserDTO getUserComplain(String userid)
    {
        UserDTO user=new UserDTO();
        String query="select * from user_complain where user_id='"+userid+"' order by date_time desc limit 1";
        try
        {
            ResultSet rs=st.executeQuery(query);
            while(rs.next())
            {
                user.setUser_complainid(rs.getString("complain_id"));
                user.setPoliceid(rs.getString("police_id"));
                user.setComplain_date_time(rs.getString("date_time"));
                user.setComplain_title(rs.getString("title"));
                user.setComplain_description(rs.getString("description"));
                user.setComplain_category(rs.getString("category"));
            } 
        }
        catch(SQLException e)
        {
            System.out.println(e);
        }
        return user;
    }
    
    public String getUserid(String license)
    {
        String userid="";
        String query="select userid from doc_list where license_no='"+license+"'";
        try
        {
            ResultSet rs=st.executeQuery(query);
            while(rs.next())
            {
                userid=rs.getString("userid");
            }
        }
        catch(SQLException e)
        {
            System.out.println(e);
        }
        return userid;
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
