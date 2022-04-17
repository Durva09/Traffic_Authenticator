package controller;

import dto.UserDTO;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import model.UserRegisterAuthenticator;

@MultipartConfig(maxFileSize = 16177215)
public class UserRegisterCheckerServlet extends HttpServlet
{
    public void doGet(HttpServletRequest request, HttpServletResponse response)throws IOException,ServletException
    {
        String username=request.getParameter("username"); 
        if(username==null)
        {
            response.sendRedirect("register.jsp"); 
        }
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException
    {
        String name=request.getParameter("name");
        String dob=request.getParameter("dob");
        String gender=request.getParameter("gender");
        String contact=request.getParameter("contact");
        String password=request.getParameter("password");
        String aadhar=request.getParameter("aadhar");
        String userid=request.getParameter("userid");
        Part profile=request.getPart("profile");
        
        HttpSession session=request.getSession(true);
        String email=(String)session.getAttribute("email");
        
        UserDTO user=new UserDTO();
        user.setName(name);
        user.setDob(dob);
        user.setGender(gender);
        user.setContact(contact);
        user.setPassword(password);
        user.setAadhar(aadhar);
        user.setEmail(email);
        user.setUserid(userid);
        user.setProfile(profile);
        
        UserRegisterAuthenticator auth = new UserRegisterAuthenticator();
        boolean register = false;
       
        register = auth.isRegister(user);
        
        if(register)
        {
            session.setAttribute("userid",userid);
            response.sendRedirect("requireotp.html");
        }
        else
        {
            response.sendRedirect("userGetOTP.jsp");
        }
    }
}