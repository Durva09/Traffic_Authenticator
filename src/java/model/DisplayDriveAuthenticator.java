package model;

import db.DBConnector;
import dto.FilesDTO;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.Blob;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DisplayDriveAuthenticator {
    
    private static final int BUFFER_SIZE = 4096;  
    
    public void isDisplayDrive(FilesDTO file, OutputStream out)
    {
      DBConnector db=new DBConnector();
      Statement st=db.getStatement();
      String doc=file.getDoc();
      
      String query="select * from medical_report where userid='"+file.getId()+"'";
      try
      {
          ResultSet rs=st.executeQuery(query);
          if (rs.next()) {
                Blob blob = rs.getBlob(doc);
                InputStream inputStream = blob.getBinaryStream();
                
                OutputStream outStream=out;
                 
                byte[] buffer = new byte[BUFFER_SIZE];
                int bytesRead = -1;
                 
                while ((bytesRead = inputStream.read(buffer)) != -1) {
                    outStream.write(buffer, 0, bytesRead);
                }
                 
                inputStream.close();
                outStream.close();             
            }
          
      }
      catch(SQLException e)
      {
          System.out.println(e);
      }
      catch(IOException e)
      {
          System.out.println(e);
      }
      
    }
}
