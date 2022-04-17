package dao;

import db.DBConnector;
import dto.DocsDTO;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DocsDAO 
{
    DBConnector db=new DBConnector();
    Statement st=db.getStatement();
    ResultSet rs=null;
    
    public DocsDTO getUserDocs(String userid)
    {
        DocsDTO docs=new DocsDTO();
        String query="select * from doc_list where userid='"+userid+"'";
        try
        {
            rs=st.executeQuery(query);
            if(rs.next())
            {
                docs.setAadhar(rs.getString("aadhar_no"));
                docs.setLicense(rs.getString("license_no"));
                docs.setVaccine(rs.getString("vaccination_no"));
                docs.setPan(rs.getString("pan-card_no"));
                docs.setPassport(rs.getString("passport_no"));
            }
        }
        catch(SQLException e)
        {
            System.out.println(e);
        }
        return docs;
    }
    
    public DocsDTO getAadharInfo(String aadhar)
    {
        DocsDTO docs=new DocsDTO();
        String query="select * from uidai where aadhar_no='"+aadhar+"'";
        try
        {
            rs=st.executeQuery(query);
            if(rs.next())
            {
               docs.setName(rs.getString("name"));
               docs.setDob(rs.getString("dob"));
               docs.setGender(rs.getString("gender"));
               docs.setAddress(rs.getString("address"));
            }
        }
        catch(SQLException e)
        {
            System.out.println(e);
        }
        return docs;
    }
    
    public DocsDTO getLicenseInfo(String license)
    {
        DocsDTO docs=new DocsDTO();
        String query="select * from driving_license where license_no='"+license+"'";
        try
        {
            rs=st.executeQuery(query);
            if(rs.next())
            {
               docs.setState(rs.getString("state"));
               docs.setIssue(rs.getString("issue_date"));
               docs.setExpire(rs.getString("expire_date"));
               docs.setName(rs.getString("name"));
               docs.setDob(rs.getString("dob"));
               docs.setBlood(rs.getString("blood"));
               docs.setSwd(rs.getString("s/w/d"));
               docs.setPresent(rs.getString("present_address"));
               docs.setPermanent(rs.getString("permanent_address"));
               docs.setDrive(rs.getString("drive"));
            }
        }
        catch(SQLException e)
        {
            System.out.println(e);
        }
        return docs;
    }
}
