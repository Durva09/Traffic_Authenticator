package dao;

import db.DBConnector;
import dto.DealerDTO;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DealerDAO {
    
    DBConnector db=new DBConnector();
    Statement st=db.getStatement();
    ResultSet rs=null;
    
    public DealerDTO getDealerData(String userid)
    {
        DealerDTO dealer=new DealerDTO();
        String query="select * from demo_dealer where userid='"+userid+"'";
        /*Additional Code To Get The Age Of The Uesr*/
        String birthyear = "";
        String dob = "";
        try
        {
            ResultSet rs=st.executeQuery(query);
            while(rs.next())
            {
                dealer.setName(rs.getString("shop_owner"));
                dealer.setEmail(rs.getString("email"));
                dealer.setIssue_Date(rs.getString("issue_date"));
                dealer.setLicense_No(rs.getString("license_no"));
                dealer.setContact(rs.getString("contact"));
                dealer.setAddress(rs.getString("address"));
                dealer.setNearby_Rto(rs.getString("nearby_rto"));
            }
        }
        catch(SQLException e)
        {
            System.out.println(e);
        }
      return dealer;
    }
}
