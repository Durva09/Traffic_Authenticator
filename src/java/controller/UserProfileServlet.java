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
import model.UserUpdateAuthenticator;

@MultipartConfig(maxFileSize = 16177215)
public class UserProfileServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response)throws IOException,ServletException
    {
        String userid=request.getParameter("userid"); 
        if(userid==null)
        {
            response.sendRedirect("userLogin.jsp"); 
        }
    }
    public void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException,ServletException
    {
        HttpSession session=request.getSession(true);
        String userid=(String)session.getAttribute("userid"); 
        Part filePart1 = request.getPart("image");
        UserDTO user=new UserDTO();
        user.setProfile(filePart1);
        user.setUserid(userid);
        
        UserUpdateAuthenticator update=new UserUpdateAuthenticator();
        boolean image=update.updateCurrentProfile(user);
        if(image)
        {
            response.sendRedirect("userDashboard.jsp");  
        }
        else
        {
            System.out.println("add alert here");  
        }
    }
}
