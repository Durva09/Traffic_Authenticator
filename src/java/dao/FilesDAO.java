package dao;

import db.DBConnector;
import dto.FilesDTO;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class FilesDAO {
    public FilesDTO userGetFiles(String userid)
    {
        DBConnector db=new DBConnector();
        Statement st=db.getStatement();
        FilesDTO docs=new FilesDTO();
        String query="select * from medical_report where userid='"+userid+"'";
        try
        {
            ResultSet rs=st.executeQuery(query);
            if(rs.next())
            {
                docs.setTitle1(rs.getString("title1"));
                docs.setTitle2(rs.getString("title2"));
                docs.setTitle3(rs.getString("title3"));
                docs.setTitle4(rs.getString("title4"));
                docs.setTitle5(rs.getString("title5"));
                
                docs.setTitle6(rs.getString("title6"));
                docs.setTitle7(rs.getString("title7"));
                docs.setTitle8(rs.getString("title8"));
                docs.setTitle9(rs.getString("title9"));
                docs.setTitle10(rs.getString("title10"));
                
                docs.setDoc1(rs.getBlob("doc1"));
                docs.setDoc2(rs.getBlob("doc2"));
                docs.setDoc3(rs.getBlob("doc3"));
                docs.setDoc4(rs.getBlob("doc4"));
                docs.setDoc5(rs.getBlob("doc5"));
                
                docs.setDoc6(rs.getBlob("doc6"));
                docs.setDoc7(rs.getBlob("doc7"));
                docs.setDoc8(rs.getBlob("doc8"));
                docs.setDoc9(rs.getBlob("doc9"));
                docs.setDoc10(rs.getBlob("doc10"));
            }
        }
        catch(SQLException e)
        {
            System.out.println(e);
        }
        return docs;
    }
    
    public FilesDTO userGetDrive(String userid)
    {
        DBConnector db=new DBConnector();
        Statement st=db.getStatement();
        FilesDTO docs=new FilesDTO();
        String query="select * from personal_drive where userid='"+userid+"'";
        try
        {
            ResultSet rs=st.executeQuery(query);
            if(rs.next())
            {
                docs.setTitle1(rs.getString("title1"));
                docs.setTitle2(rs.getString("title2"));
                docs.setTitle3(rs.getString("title3"));
                docs.setTitle4(rs.getString("title4"));
                docs.setTitle5(rs.getString("title5"));
                
                docs.setTitle6(rs.getString("title6"));
                docs.setTitle7(rs.getString("title7"));
                docs.setTitle8(rs.getString("title8"));
                docs.setTitle9(rs.getString("title9"));
                docs.setTitle10(rs.getString("title10"));
                
                docs.setDoc1(rs.getBlob("doc1"));
                docs.setDoc2(rs.getBlob("doc2"));
                docs.setDoc3(rs.getBlob("doc3"));
                docs.setDoc4(rs.getBlob("doc4"));
                docs.setDoc5(rs.getBlob("doc5"));
                
                docs.setDoc6(rs.getBlob("doc6"));
                docs.setDoc7(rs.getBlob("doc7"));
                docs.setDoc8(rs.getBlob("doc8"));
                docs.setDoc9(rs.getBlob("doc9"));
                docs.setDoc10(rs.getBlob("doc10"));
            }
        }
        catch(SQLException e)
        {
            System.out.println(e);
        }
        return docs;
    }
}
