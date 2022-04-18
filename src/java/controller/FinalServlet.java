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
import model.DealerUpdateAuthenticator;
import model.TrafficPoliceUpdateAuthenticator;
import model.UserUpdateAuthenticator;

public class FinalServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        HttpSession session=request.getSession(true);
        String userid=(String)session.getAttribute("userid");
        if(userid==null)
        {
            response.sendRedirect("userLogin.jsp");
        }
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        String otp = request.getParameter("otp");
        String userotp = request.getParameter("userotp");
        
        String page=request.getParameter("page");
        
        if(page.equals("getotp"))
        {
        if(otp.equals(userotp))
        {
            System.out.println("OTP Matched Successfully!!!!!");
            response.sendRedirect("userRegister.jsp");
        }
        else
        {
            System.out.println("OTP Didn't Match!!!!!!");
            response.sendRedirect("userGetOTP.jsp");
        }
        }
        
       if(page.equals("mail"))
       {
           System.out.println(otp+""+userotp);
           if(otp.equals(userotp))
           {
               HttpSession session=request.getSession(true);
               String userid=(String)session.getAttribute("userid");
               System.out.println(userid);
               
               String email=(String)session.getAttribute("email");
               UserDTO dto=new UserDTO();
               dto.setEmail(email);
               dto.setUserid(userid);
               
               UserUpdateAuthenticator updt=new UserUpdateAuthenticator();
                boolean check=updt.isUpdateEmail(dto);

                if(check)
                {
                    System.out.println("yes");
                    response.sendRedirect("userDashboard.jsp#editemail");
                }
                else
                {
                    System.out.println("no");
                    response.sendRedirect("userDashboard.jsp#editemail");
                }
           }
           else
           {
               response.sendRedirect("userDashboard.jsp#editemail");
           }
       }
       
       if(page.equals("dealermail"))
       {
           System.out.println(otp+""+userotp);
           if(otp.equals(userotp))
           {
               HttpSession session=request.getSession(true);
               String userid=(String)session.getAttribute("userid");
               System.out.println(userid);
               
               String email=(String)session.getAttribute("email");
               DealerDTO dto=new DealerDTO();
               dto.setEmail(email);
               dto.setUserid(userid);
               
               DealerUpdateAuthenticator updt=new DealerUpdateAuthenticator();
                boolean check=updt.isUpdateEmail(dto);

                if(check)
                {
                    System.out.println("yes");
                    response.sendRedirect("dealer_dashboard.jsp#editemail");
                }
                else
                {
                    System.out.println("no");
                    response.sendRedirect("dealer_dashboard.jsp#editemail");
                }
           }
           else
           {
               response.sendRedirect("dealer_dashboard.jsp#editemail");
           }
       }
           if(page.equals("trafficemail"))
       {
           System.out.println(otp+""+userotp);
           if(otp.equals(userotp))
           {
               HttpSession session=request.getSession(true);
               String userid=(String)session.getAttribute("userid");
               System.out.println(userid);
               
               String email=(String)session.getAttribute("email");
               TrafficPoliceDTO dto=new TrafficPoliceDTO();
               dto.setEmail(email);
               dto.setUserid(userid);
               
               TrafficPoliceUpdateAuthenticator updt=new TrafficPoliceUpdateAuthenticator();
                boolean check=updt.isUpdateEmail(dto);

                if(check)
                {
                    System.out.println("yes");
                    response.sendRedirect("trafficPoliceDashboard.jsp");
                }
                else
                {
                    System.out.println("no");
                    response.sendRedirect("trafficPoliceDashboard.jsp");
                }
           }
           else
           {
               response.sendRedirect("trafficPoliceDashboard.jsp");
           }
       }
    }
}
