
package model;

import db.DBConnector;
import dto.MedicalDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

public class MedicalUpdateAuthenticator {
    
        DBConnector db = new DBConnector();
        Connection con = db.getConnection();
        
    public boolean editMedicalDetails(MedicalDTO med)
    {
        
        
        String temp[] = med.getOther_illness();
        String other_illness = temp[0];
        for(int i=1; i<temp.length;i++)
        {
            other_illness = other_illness+","+temp[i];
        }
        System.out.println("Other Illness : "+other_illness);
        
        String query = "UPDATE medical_status SET blood_group=?, specially_abled=?, desc_ability=?, weight=?, height=?, diabetes=?, blood_pressure=?, any_medication=?, medication_desc=?, med_allergy=?, allergy_desc=?, other_diseases=?, tobacco=?, smoke=?, alcohol=?, health_comment=? where userid=? ";
        try
        {
            System.out.println("Query : "+query);
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, med.getBloodgroup());
            ps.setString(2, med.getSpecially_abled());
            ps.setString(3, med.getAbility_desc());
            ps.setString(4, med.getWeight());
            ps.setString(5, med.getHeight());
            ps.setString(6, med.getDiabetes());
            ps.setString(7, med.getBlood_pressure());
            ps.setString(8, med.getAny_medication());
            ps.setString(9, med.getMedication_desc());
            ps.setString(10, med.getMed_allergy());
            ps.setString(11, med.getAllergy_desc());
            ps.setString(12, other_illness);
            ps.setString(13, med.getTobacco());
            ps.setString(14, med.getSmoking());
            ps.setString(15, med.getAlcohol());
            ps.setString(16, med.getComment());
            ps.setString(17,med.getUserid());
            
            System.out.println("Query : "+query);
            int x = ps.executeUpdate();
            if(x!=0)
            {
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
