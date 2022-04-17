package dao;

import db.DBConnector;
import dto.MedicalDTO;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.StringTokenizer;


public class UserMedicalDAO {
    
    DBConnector db=new DBConnector();
    Statement st=db.getStatement();
    //ArrayList and String Array to set other_diseases:
    ArrayList<String> other_diseases = new ArrayList<String>();
    String arr[];
    
    public MedicalDTO getMedicalDetails(String userid)
    {
        MedicalDTO medDTO = new MedicalDTO();
        try
        {
            String query = "SELECT * FROM medical_status WHERE userid='"+userid+"' ";
            ResultSet rs = st.executeQuery(query);
            while(rs.next())
            {
                medDTO.setUserid(rs.getString("userid"));
                medDTO.setAge(Integer.toString(rs.getInt("age")));
                medDTO.setGender(rs.getString("gender"));
                medDTO.setBloodgroup(rs.getString("blood_group"));
                medDTO.setSpecially_abled(rs.getString("specially_abled"));
                medDTO.setAbility_desc(rs.getString("desc_ability"));
                medDTO.setWeight(Integer.toString(rs.getInt("weight")));
                medDTO.setHeight(Integer.toString(rs.getInt("height")));
                medDTO.setDiabetes(rs.getString("diabetes"));
                medDTO.setBlood_pressure(rs.getString("blood_pressure"));
                medDTO.setAny_medication(rs.getString("any_medication"));
                medDTO.setMedication_desc(rs.getString("medication_desc"));
                medDTO.setMed_allergy(rs.getString("med_allergy"));
                medDTO.setAllergy_desc(rs.getString("allergy_desc"));
                
                //Using String Tokenizer to convert string into string array:
                StringTokenizer stz = new StringTokenizer(rs.getString("other_diseases"),",");
                while(stz.hasMoreTokens())
                {
                    other_diseases.add(stz.nextToken());
                }
                //Converting aaraylist of string to a string array:
                arr = other_diseases.toArray(new String[other_diseases.size()]);
                medDTO.setOther_illness(arr);
                
                medDTO.setTobacco(rs.getString("tobacco"));
                medDTO.setSmoking(rs.getString("smoke"));
                medDTO.setAlcohol(rs.getString("alcohol"));
                medDTO.setComment(rs.getString("health_comment"));
            }
        }
        catch(SQLException e)
        {
            System.out.println(e);
        }
        
        return medDTO;
    }//getMedicalDetails
    
}
