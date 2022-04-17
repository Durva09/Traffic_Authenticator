package controller;

import dto.MedicalDTO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.MedicalRegisterAuthenticator;

public class MedicalRegisterServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        HttpSession session=request.getSession();
        String userid=(String)session.getAttribute("userid");
        if(userid==null)
        {
            response.sendRedirect("userLogin.html");
        }
    }
    
        public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        
        PrintWriter out = response.getWriter();
        HttpSession session=request.getSession();
        String userid=(String)session.getAttribute("userid");
        String age = request.getParameter("age");
        String gender = request.getParameter("gender");
        String bloodgroup = request.getParameter("bloodgroup");
        String specially_abled = request.getParameter("specially_abled");
        String ability_desc = request.getParameter("ability_desc");
        String weight = request.getParameter("weight");
        String height = request.getParameter("height");
        String diabetes = request.getParameter("diabetes");
        String blood_pressure = request.getParameter("blood_pressure");
        String any_medication = request.getParameter("any_medication");
        String medication_desc = request.getParameter("medication_desc");
        String med_allergy = request.getParameter("med_allergy");
        String allergy_desc = request.getParameter("allergy_desc");
        String other_illness[] = request.getParameterValues("other_illness");
        String tobacco = request.getParameter("tobacco");
        String smoking = request.getParameter("smoking");
        String alcohol = request.getParameter("alcohol");
        String comment = request.getParameter("comment");
        
       //Setting the values in the MedicalDTO
        MedicalDTO dto = new MedicalDTO();
        dto.setUserid(userid);
        dto.setAge(age);
        dto.setGender(gender);
        dto.setBloodgroup(bloodgroup);
        dto.setSpecially_abled(specially_abled);
        dto.setAbility_desc(ability_desc);
        dto.setWeight(weight);
        dto.setHeight(height);
        dto.setDiabetes(diabetes);
        dto.setBlood_pressure(blood_pressure);
        dto.setAny_medication(any_medication);
        dto.setMedication_desc(medication_desc);
        dto.setMed_allergy(med_allergy);
        dto.setAllergy_desc(allergy_desc);
        dto.setOther_illness(other_illness);
        dto.setTobacco(tobacco);
        dto.setSmoking(smoking);
        dto.setAlcohol(alcohol);
        dto.setComment(comment);
                
        //Calling the MedicalAuthenticator
        MedicalRegisterAuthenticator med = new MedicalRegisterAuthenticator();
        boolean check = med.setMedicalDetails(dto);
        
        if(check)
        {
            response.sendRedirect("medicalStatus.jsp");
        }
        else
        {
            response.sendRedirect("medicalStatus.jsp");
        }
        
    }
}
