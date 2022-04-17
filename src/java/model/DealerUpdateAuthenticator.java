/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import db.DBConnector;
import dto.DealerDTO;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author Admin
 */
public class DealerUpdateAuthenticator {
 
    DBConnector db=new DBConnector();
    Statement st=db.getStatement();
     
    public boolean isUpdateEmail(DealerDTO dealer)
    {
     String userid=dealer.getUserid();
     String email=dealer.getEmail();
     
     String query="update demo_dealer set email='"+email+"' where userid='"+userid+"'";
        
     try
     {
         int x=st.executeUpdate(query);
         if(x>0)
             return true;
     }
     catch(SQLException e)
     {
         System.out.println(e);
     }
     
    return false;
    }
    
    public boolean isUpdate(DealerDTO dealer)
    {
     String userid=dealer.getUserid();
     String contact=dealer.getContact();
     
     String query="update demo_dealer set contact='"+contact+"' where userid='"+userid+"'";
     
     try
     {
         int x=st.executeUpdate(query);
         if(x>0)
             return true;
     }
     catch(SQLException e)
     {
         System.out.println(e);
     }
     
    return false;
    }
    
}
