package controller;

import dto.UserDTO;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.UserUpdateAuthenticator;

public class UserUpdateServlet extends HttpServlet {

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
        String userid=(String)session.getAttribute("userid");
        String address=request.getParameter("address");
        String contact=request.getParameter("contact");
        String profession=request.getParameter("profession");
        
        UserDTO dto=new UserDTO();
        dto.setUserid(userid);
        dto.setAddress(address);
        dto.setProfession(profession);
        dto.setContact(contact);
        
        UserUpdateAuthenticator updt=new UserUpdateAuthenticator();
        boolean check=updt.isUpdate(dto);
        
        if(check)
        {
            response.sendRedirect("userDashboard.jsp#password");
        }
        else
        {
            response.sendRedirect("userDashboard.jsp#password");
        }
    }
}
