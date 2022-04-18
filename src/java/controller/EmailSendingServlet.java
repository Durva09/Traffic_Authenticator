package controller;

import dao.UserDAO;
import dao.VehicleDAO;
import dto.UserDTO;
import dto.VehicleDTO;
import java.io.IOException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.EmailUtility;
import model.UserCheckHistoryAuthenticator;
import model.VehicleCheckHistoryAuthenticator;

public class EmailSendingServlet extends HttpServlet {
    private String host;
    private String port;
    private String user;
    private String pass;
 
    public void init() {
        // reads SMTP server setting from web.xml file
        ServletContext context = getServletContext();
        host = context.getInitParameter("host");
        port = context.getInitParameter("port");
        user = context.getInitParameter("user");
        pass = context.getInitParameter("pass");
    }
    
    protected void doPost(HttpServletRequest request,HttpServletResponse response)throws ServletException, IOException 
    {
        String page=request.getParameter("page");
        if(page.equals("vehicleOwnerDetails.jsp"))
        {
           String vehicle_id=request.getParameter("vehicle_id");
           VehicleDAO vehicle=new VehicleDAO();
           String recipient="";
           
           String type=request.getParameter("type");
           if(type.equals("new"))
           {
                VehicleDTO dto=vehicle.getVehicleDetails(vehicle_id);
                recipient=dto.getEmail();
           }
           else if(type.equals("old"))
           {
               vehicle_id=vehicle.getOldVehicleDetails(vehicle_id);
               VehicleDTO dto=vehicle.getVehicleDetails(vehicle_id);
                recipient=dto.getEmail();
           }
           
           HttpSession session=request.getSession(true);
           String policeid=(String)session.getAttribute("userid");
           DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");
           LocalDateTime now = LocalDateTime.now();
           String date_time=dtf.format(now);
           
           session.setAttribute("email",recipient);
           String subject = "Vehicle Verification";
           String content = "Your vehicle is verified by police("+policeid+") on "+date_time+".";
           
            VehicleCheckHistoryAuthenticator vehicle1 =new VehicleCheckHistoryAuthenticator();
            boolean history=vehicle1.ischeckHistory(vehicle_id,policeid);
            
            String resultMessage = "";
            try {
            
            EmailUtility.sendEmail(host, port, user, pass, recipient, subject,content);
            resultMessage = vehicle_id;
            } 
            catch (Exception ex) {
                System.out.println(ex);
                resultMessage = "There were an error: " + ex.getMessage();
            } 
            finally {
                request.setAttribute("Message", resultMessage);
                getServletContext().getRequestDispatcher("/"+page).forward(request, response);
            }
        }
        else if(page.equals("userDetails.jsp"))
        {
            String user_id=request.getParameter("user_id");
            String stats="";
            UserDAO user1=new UserDAO();
            String recipient="";
            
            String type=request.getParameter("type");
           if(type.equals("id"))
           {
                UserDTO dto=user1.getUserData(user_id);
                recipient=dto.getEmail();
                stats="registered";
           }
           else if(type.equals("no"))
           {
                String license=user_id;
                user_id=user1.getUserid(user_id);
                stats="registered";
                if(user_id.equals(""))
                {
                    stats="not_registered";
                    user_id=license;
                    request.setAttribute("Message", license);
                    getServletContext().getRequestDispatcher("/displayLicense.jsp").forward(request, response);
                }
                UserDTO dto=user1.getUserData(user_id);
                recipient=dto.getEmail();
           }
           HttpSession session=request.getSession(true);
           String policeid=(String)session.getAttribute("userid");
           DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");
           LocalDateTime now = LocalDateTime.now();
           String date_time=dtf.format(now);
           
           session.setAttribute("email",recipient);
           String subject = "User Verification";
           String content = "Your profile is verified by police("+policeid+") on "+date_time+".";
           
            UserCheckHistoryAuthenticator user2 =new UserCheckHistoryAuthenticator();
            boolean history=user2.ischeckHistory(user_id,policeid,stats);
            
            String resultMessage = "";
            try {
            
            EmailUtility.sendEmail(host, port, user, pass, recipient, subject,content);
            resultMessage = user_id;
            } 
            catch (Exception ex) {
                System.out.println(ex);
                resultMessage = "There were an error: " + ex.getMessage();
            } 
            finally {
                request.setAttribute("Message", resultMessage);
                getServletContext().getRequestDispatcher("/"+page).forward(request, response);
            }
            
        }
        else
        {
            int max = 9999,min = 1000;
        
        int b = (int)(Math.random()*(max-min+1)+min);
        
        
        String recipient = request.getParameter("recipient");
        String subject = "Registration OTP";
        String content = "Your OTP is: "+"\n"+b+"\nOTP is confidential and valid for 10 minutes. For security reasons, DO NOT share this OTP with anyone.";
        
        
        HttpSession session=request.getSession(true);
        session.setAttribute("email",recipient);
        
        String resultMessage = "";
 
        try {
            
            EmailUtility.sendEmail(host, port, user, pass, recipient, subject,content);
            resultMessage = String.valueOf(b);
        } 
        catch (Exception ex) {
            System.out.println(ex);
            resultMessage = "There were an error: " + ex.getMessage();
        } 
        finally {
            request.setAttribute("Message", resultMessage);
            getServletContext().getRequestDispatcher("/"+page).forward(request, response);
        }
        }
        
    }
}
