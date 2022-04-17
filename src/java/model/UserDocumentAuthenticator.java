package model;

import db.DBConnector;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class UserDocumentAuthenticator 
{
    DBConnector db=new DBConnector();
    Statement st=db.getStatement();
    ResultSet rs=null;
    Connection con=db.getConnection();
    
    public boolean checkLicense(String userid,String document_id)
    {
        String aadhar1="",aadhar2="";
        String query="select aadhar_no from uidai where userid='"+userid+"'";
        try
        {
        rs=st.executeQuery(query);
        if(rs.next())
        {
            aadhar1=rs.getString("aadhar_no");
        }
        
        query="select aadhar_no from driving_license where license_no='"+document_id+"'";
        rs=st.executeQuery(query);
        if(rs.next())
        {
            aadhar2=rs.getString("aadhar_no");
        }
        
        if(aadhar1.equals(aadhar2))
        {
            query="update doc_list set license_no = ? where userid='"+userid+"'";
            PreparedStatement ps=con.prepareStatement(query);
            ps.setString(1,document_id);
            int x=ps.executeUpdate();
            if(x>0)
                return true;
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
    
    public boolean checkVaccine(String userid,String document_id)
    {
        String aadhar1="",aadhar2="";
        String query="select aadhar_no from uidai where userid='"+userid+"'";
        try
        {
        rs=st.executeQuery(query);
        if(rs.next())
        {
            aadhar1=rs.getString("aadhar_no");
        }
        
        query="select aadhar_no from driving_license where vaccine_no='"+document_id+"'";
        rs=st.executeQuery(query);
        if(rs.next())
        {
            aadhar2=rs.getString("aadhar_no");
        }
        
        if(aadhar1.equals(aadhar2))
        {
            query="update doc_list set license_no = ? where userid='"+userid+"'";
            PreparedStatement ps=con.prepareStatement(query);
            ps.setString(1,document_id);
            rs=ps.executeQuery();
            if(rs.next())
                return true;
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
    
    public boolean checkPassport(String userid,String document_id)
    {
        String aadhar1="",aadhar2="";
        String query="select aadhar_no from uidai where userid='"+userid+"'";
        try
        {
        rs=st.executeQuery(query);
        if(rs.next())
        {
            aadhar1=rs.getString("aadhar_no");
        }
        
        query="select aadhar_no from driving_license where vaccine_no='"+document_id+"'";
        rs=st.executeQuery(query);
        if(rs.next())
        {
            aadhar2=rs.getString("aadhar_no");
        }
        
        if(aadhar1.equals(aadhar2))
        {
            query="update doc_list set license_no = ? where userid='"+userid+"'";
            PreparedStatement ps=con.prepareStatement(query);
            ps.setString(1,document_id);
            rs=ps.executeQuery();
            if(rs.next())
                return true;
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
