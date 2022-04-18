package controller;

import dto.DealerDTO;
import dto.TrafficPoliceDTO;
import dto.UserDTO;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.EditPasswordAuthenticator;

public class EditPasswordServlet extends HttpServlet 
{
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
        String current=request.getParameter("current");
        String newpass=request.getParameter("newpass");
        String conpass=request.getParameter("conpass");
        HttpSession session=request.getSession();
        String userid=(String)session.getAttribute("userid");
        String page=request.getParameter("page");
        
        boolean edit=false;
        
        if(conpass.equals(newpass))
        {
            if(page.equals("userDashboard.jsp"))
            {
                UserDTO user=new UserDTO();
                user.setNewpass(newpass);
                user.setPassword(current);
                user.setUserid(userid);

                EditPasswordAuthenticator auth=new EditPasswordAuthenticator();
                edit=auth.isEdit(user);
            }
            else if(page.equals("dealer_dashboard.jsp"))
            {
                DealerDTO dealer=new DealerDTO();
                dealer.setNewpass(newpass);
                dealer.setPassword(current);
                dealer.setUserid(userid);

                EditPasswordAuthenticator auth=new EditPasswordAuthenticator();
                edit=auth.isEdit(dealer);
            }
            else if(page.equals("trafficPoliceDashboard.jsp"))
            {
                TrafficPoliceDTO police=new TrafficPoliceDTO();
                police.setNewpass(newpass);
                police.setPassword(current);
                police.setUserid(userid);

                EditPasswordAuthenticator auth=new EditPasswordAuthenticator();
                edit=auth.isEdit(police);
            }
            
            if(edit)
            {
                response.sendRedirect(page);
            }
            else
            {
                response.sendRedirect(page);
            }
        }
        else
        {
            response.sendRedirect(page);
        }
    }
}
