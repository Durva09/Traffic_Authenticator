package controller;

import dto.VehicleDTO;
import java.io.IOException;
import java.time.LocalDate;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import model.VehicleRegistrationAuthenticator;

@MultipartConfig(maxFileSize = 16177215)
public class VehicleRegistrationServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response)throws IOException,ServletException
    {
        HttpSession session=request.getSession();
        String userid=(String)session.getAttribute("userid");
        if(userid==null)
        {
            response.sendRedirect("userLogin.html");
        }
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response)throws IOException,ServletException
    {
        HttpSession session=request.getSession();
        String dealerid=(String)session.getAttribute("userid");
        
        String soldby=request.getParameter("soldby");
        String name=request.getParameter("name");
        String fname=request.getParameter("fname");
        String dob=request.getParameter("dob");
        String address=request.getParameter("address");
        String state=request.getParameter("state");
        String city=request.getParameter("city");
        String pincode=request.getParameter("pincode");
        String contact1=request.getParameter("contact1");
        String contact2=request.getParameter("contact2");
        String email=request.getParameter("email");
        String aadhar=request.getParameter("aadhar");
        String license=request.getParameter("license");
        
        String showroom_address=request.getParameter("showroom_address");
        String vehicleno=request.getParameter("vehicleno");
        String engineno=request.getParameter("engineno");
        String chassis=request.getParameter("chassis");
        String rcno=request.getParameter("rcno");
        String enginetype=request.getParameter("enginetype");
        String vehiclecompany=request.getParameter("vehiclecompany");
        String modelno=request.getParameter("modelno");
        String rtoname=request.getParameter("rtoname");
        String yearofmanufacture=request.getParameter("yearofmanufacture");
        String vehiclecolor=request.getParameter("vehiclecolor");
        String registrationvalidity=request.getParameter("registrationvalidity");
        String vehicletype=request.getParameter("vehicletype");
        Part vehicleimage = request.getPart("vehicleimage");
       
        String registrationdate=String.valueOf(LocalDate.now());
        
        VehicleDTO vehicle=new VehicleDTO();
        vehicle.setSoldby(soldby);
        vehicle.setName(name);
        vehicle.setFname(fname);
        vehicle.setDob(dob);
        vehicle.setAadhar(aadhar);
        vehicle.setAddress(address);
        vehicle.setState(state);
        vehicle.setCity(city);
        vehicle.setPincode(pincode);
        vehicle.setContact1(contact1);
        vehicle.setContact2(contact2);
        vehicle.setEmail(email);
        vehicle.setLicense(license);
        vehicle.setVehicleno(vehicleno);
        vehicle.setEngineno(engineno);
        vehicle.setChassis(chassis);
        vehicle.setRcno(rcno);
        vehicle.setEnginetype(enginetype);
        vehicle.setVehiclecompany(vehiclecompany);
        vehicle.setModelno(modelno);
        vehicle.setRtoname(rtoname);
        vehicle.setYearofmanufacture(yearofmanufacture);
        vehicle.setVehiclecolor(vehiclecolor);
        vehicle.setRegistrationvalidity(registrationvalidity);
        vehicle.setVehicletype(vehicletype);
        vehicle.setVehicleimage(vehicleimage);
        vehicle.setShowroom_address(showroom_address);
        vehicle.setDealerid(dealerid);
        vehicle.setPurchaseDate(registrationdate);
        
        VehicleRegistrationAuthenticator register=new VehicleRegistrationAuthenticator();
        boolean isregister=register.isRegister(vehicle);
        
        if(isregister)
        {
            response.sendRedirect("vehicleRegistration.jsp");
        }
        else
        {
            response.sendRedirect("vehicleRegistration.jsp");
        }
    }
    
}
