
package dao;

import db.DBConnector;
import dto.DealerDTO;
import dto.RtoDTO;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class RtoDAO {
    
    DBConnector db=new DBConnector();
    Statement st=db.getStatement();
    ResultSet rs=null;
    
    public RtoDTO getRtoData(String userid)
    {
        RtoDTO rto=new RtoDTO();
        String query="select * from demo_rto where username='"+userid+"'";
        
        try
        {
            ResultSet rs=st.executeQuery(query);
            while(rs.next())
            {
                rto.setEmail(rs.getString("email"));
                rto.setContact(rs.getString("contact"));
                rto.setState(rs.getString("state"));
                rto.setPincode(rs.getString("pincode"));
                rto.setCity(rs.getString("city"));
                rto.setAddress(rs.getString("address"));
            }
        }
        catch(SQLException e)
        {
            System.out.println(e);
        }
      return rto;
    }
}
