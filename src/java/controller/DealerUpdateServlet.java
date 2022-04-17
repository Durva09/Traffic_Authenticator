
package controller;

import dto.DealerDTO;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.DealerUpdateAuthenticator;

public class DealerUpdateServlet extends HttpServlet {

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
        String contact=request.getParameter("contact");
        
        DealerDTO dto=new DealerDTO();
        dto.setUserid(userid);
        dto.setContact(contact);
        
        DealerUpdateAuthenticator updt=new DealerUpdateAuthenticator();
        boolean check=updt.isUpdate(dto);
        
        if(check)
        {
            response.sendRedirect("dealer_dashboard.jsp");
        }
        else
        {
            response.sendRedirect("dealer_dashboard.jsp");
        }
    }
}
