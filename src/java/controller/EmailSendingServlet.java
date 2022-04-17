package controller;

import java.io.IOException;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.EmailUtility;

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
        int max = 9999,min = 1000;
        
        int b = (int)(Math.random()*(max-min+1)+min);
        
        String page=request.getParameter("page");
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
