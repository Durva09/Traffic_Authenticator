package model;

import db.DBConnector;
import dto.UserDTO;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.http.Part;

public class UserRegisterAuthenticator 
{
public boolean isRegister(UserDTO user) throws IOException
{

String name=user.getName();
String dob=user.getDob();
String contact=user.getContact();
String gender=user.getGender();
String userid=user.getUserid();
String aadhar=user.getAadhar();
String email=user.getEmail();
String password=user.getPassword();

Part profile=user.getProfile();
   
InputStream inputStream=null;
    
String f1,g1,d1,address;
int length=0;
DBConnector db=new DBConnector();
Connection con=db.getConnection();

try
{
String query="select name from user where aadhar_no='"+aadhar+"'";
Statement st=db.getStatement();
ResultSet rs=st.executeQuery(query);
if(rs.next())
{
    return false;
}

query="select * from uidai where aadhar_no='"+aadhar+"'";
st=db.getStatement();
rs=st.executeQuery(query);
if(rs.next())
{
    f1=rs.getString("name");
    d1=rs.getString("dob");
    g1=rs.getString("gender");
    address=rs.getString("address");
    
    if(f1.equalsIgnoreCase(name) && d1.equals(dob) && g1.equalsIgnoreCase(gender))
    {
        PreparedStatement ps=con.prepareStatement("insert into user values(?,?,?,?,?,?,?,?,?,?,?,?)");
        ps.setString(1,userid);
        ps.setString(2,aadhar);
        ps.setString(3,password);
        ps.setString(4,name);
        ps.setString(5,dob);
        ps.setString(6,gender);
        ps.setString(7,contact);
        ps.setString(8,email);
        ps.setInt(9,0);
        ps.setBinaryStream(10,inputStream,length);
        ps.setString(11,address);
        ps.setString(12, null);
        int x=ps.executeUpdate();
        if(x>0)
        {
            query="insert into doc_list(userid,aadhar_no) values('"+userid+"','"+aadhar+"')";
            int y=st.executeUpdate(query);
            if(y>0)
            {
                st=db.getStatement();
                query="insert into medical_report values('"+userid+"','null','null','null','null','null','null','null','null','null','null','null','null','null','null','null','null','null','null','null','null')";
                int z =st.executeUpdate(query);
                if(z>0)
                {
                    return true;
                }
            }  
        }
    }
}
else
{
    return false;
}
}
catch(SQLException e)
{
    System.out.println(e);
}
return false;   
}
}
