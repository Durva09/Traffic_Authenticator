package model;

import db.DBConnector;
import dto.MedicalDTO;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.Part;

@MultipartConfig(maxFileSize = 16177215)
public class PersonalDriveAuthenticator {
    
    DBConnector db = new DBConnector();
    Connection con = db.getConnection();
    String t1,t2,t3,t4,t5,t6,t7,t8,t9,t10;
    Blob d1,d2,d3,d4,d5,d6,d7,d8,d9,d10;
    
    public boolean setPersonalDocs(MedicalDTO dto) throws IOException
    {
        String userid=dto.getUserid();
        Part doc=dto.getDocument();
        String title=dto.getDocument_title();
        InputStream inputstream= doc.getInputStream();
        
        String query="select * from personal_drive where userid='"+userid+"'";
        try
        {
            Statement st=db.getStatement();
            ResultSet rs=st.executeQuery(query);
            while(rs.next())
            {
                t1=rs.getString("title1");
                d1=rs.getBlob("doc1");
                t2=rs.getString("title2");
                d2=rs.getBlob("doc2");
                t3=rs.getString("title3");
                d3=rs.getBlob("doc3");
                t4=rs.getString("title4");
                d4=rs.getBlob("doc4");
                t5=rs.getString("title5");
                d5=rs.getBlob("doc5");
                
                t6=rs.getString("title6");
                d6=rs.getBlob("doc6");
                t7=rs.getString("title7");
                d7=rs.getBlob("doc7");
                t8=rs.getString("title8");
                d8=rs.getBlob("doc8");
                t9=rs.getString("title9");
                d9=rs.getBlob("doc9");
                t10=rs.getString("title10");
                d10=rs.getBlob("doc10");
            }
            if(t1==null)
            {
                query="update personal_drive set title1='"+title+"', doc1=? where userid='"+userid+"'";
            }    
            else if(t2==null)
            {
                query="update personal_drive set title2='"+title+"', doc2=? where userid='"+userid+"'";
            }
            else if(t3==null)
            {
                query="update personal_drive set title3='"+title+"', doc3=? where userid='"+userid+"'";
            }
            else if(t4==null)
            {
                query="update personal_drive set title4='"+title+"', doc4=? where userid='"+userid+"'";
            }
            else if(t5==null)
            {
                query="update personal_drive set title5='"+title+"', doc5=? where userid='"+userid+"'";
            }
            else if(t6==null)
            {
                query="update personal_drive set title6='"+title+"', doc6=? where userid='"+userid+"'";
            }
            else if(t7==null)
            {
                query="update personal_drive set title7='"+title+"', doc7=? where userid='"+userid+"'";
            }
            else if(t8==null)
            {
                query="update personal_drive set title8='"+title+"', doc8=? where userid='"+userid+"'";
            }
            else if(t9==null)
            {
                query="update personal_drive set title9='"+title+"', doc9=? where userid='"+userid+"'";
            }
            else
            {
                query="update personal_drive set title10='"+title+"', doc10=? where userid='"+userid+"'";
            }
                try
                {
                    PreparedStatement ps=con.prepareStatement(query);
                    ps.setBinaryStream(1, inputstream, inputstream.available());
                    int x=ps.executeUpdate();
                    if(x>0)
                        return true;
                }
                catch(SQLException e)
                {
                    System.out.println(e);
                }
       
        }
        catch(SQLException e)
        {
            System.out.println(e);
        }
        return false;
    }
    
}
