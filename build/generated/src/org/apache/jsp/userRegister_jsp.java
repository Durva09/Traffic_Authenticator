package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class userRegister_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!doctype html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("        <meta charset='utf-8'>\n");
      out.write("        <meta name='viewport' content='width=device-width, initial-scale=1'>\n");
      out.write("        <title>Register</title>\n");
      out.write("        <link href='' rel='stylesheet'>\n");
      out.write("        <link href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css' rel='stylesheet'>\n");
      out.write("        <script type='text/javascript' src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>\n");
      out.write("        <link rel=\"stylesheet\" href=\"style.css\">                 \n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    ");
String email=(String)session.getAttribute("email");
      out.write("\n");
      out.write("    ");

        if(email.equals("null"))
        {
            response.sendRedirect("userGetOTP.jsp");
        }
    
      out.write("\n");
      out.write("\n");
      out.write("<div class=\"container\">\n");
      out.write("    <div class=\"card\">\n");
      out.write("        <!--<div class=\"form\">-->\n");
      out.write("          <form class=\"form\" method=\"post\" action=\"UserRegisterCheckerServlet\" enctype=\"multipart/form-data\">\n");
      out.write("            <div class=\"right-side \">\n");
      out.write("                <div class=\"main active\">\n");
      out.write("                    <div class=\"manage\" style=\"margin: 0px; padding: 0%; font-size: 10px;font-weight: bolder;\">\n");
      out.write("                        <h1>Creating account is fast and easy!</h1>\n");
      out.write("                    </div>\n");
      out.write("                    <input type=\"file\" value=\"profile_1.png\" src=\"profile_1.png\" name=\"profile\" multiple hidden>\n");
      out.write("                    <div class=\"input_div\" >\n");
      out.write("                        <div class=\"input_text\"> <input class=\"written_name\" type=\"text\" name=\"name\" require required> <label>Full Name</label> </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"input_div\" >\n");
      out.write("                        <div class=\"input_text\"> <input  type=\"text\" name=\"dob\" onfocus=\"(this.type='Date')\" onblur=\"(this.type='text')\" require required> <label>DOB</label> </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"input_div\">\n");
      out.write("                        <p>Gender : </p>\n");
      out.write("                        <div class=\"blood\" style=\"margin: 2px;\"> \n");
      out.write("                            <input type=\"radio\" id=\"male\" name=\"gender\" value=\"Male\" require required> <label for=\"male\"> Male</label>\n");
      out.write("                            &nbsp;&nbsp;&nbsp;\n");
      out.write("                            <input type=\"radio\" id=\"female\" name=\"gender\" value=\"Female\" require required><label for=\"female\"> Female</label>\n");
      out.write("                            &nbsp;&nbsp;&nbsp;\n");
      out.write("                            <input type=\"radio\" id=\"other\" name=\"gender\" value=\"Other\" require required><label for=\"other\"> Other</label>\n");
      out.write("                         </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"input_div\" >\n");
      out.write("                        <div class=\"input_text\"> <input type=\"number\" name=\"contact\" require required> <label>Phone No.</label> </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"input_div\">\n");
      out.write("                        <div class=\"input_text\"> <input type=\"text\" name=\"email\" value=\"");
out.println(email);
      out.write("\" disabled> <label></label> </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"input_div\">\n");
      out.write("                        <div class=\"input_text\"> <input type=\"number\" onkeyup=\"this.value=removeSpaces(this.value);\" name=\"aadhar\" class=\"aadhar\" required> <label>Aadhar No.</label></div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"agree\"> <span><i class=\"fa fa-check\"></i></span>\n");
      out.write("                        <p style=\"font-size: 12px; font-weight: 600;\">DigiLocker uses Aadhaar to verify identity of the user and also enable authentic document access</p>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"button step_1\" style=\"margin:3%;\"> \n");
      out.write("                        <button class=\"next_btn\" >Register&nbsp;\n");
      out.write("                        <i class=\"fa fa-arrow-circle-right\" style=\"font-size:3vh;\"></i>\n");
      out.write("                    </button>\n");
      out.write("                     </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"main \">\n");
      out.write("                    <div class=\"manage\">\n");
      out.write("                        <h3>Security</h3>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"input_div\">\n");
      out.write("                        <div class=\"input_text\"> <input type=\"text\" name=\"userid\" id=\"userid\" require required> <label> Create User ID</label> <i class=\"fa fa-eye-slash password_eye\"></i></div>\n");
      out.write("                    </div>\n");
      out.write("                    <span id=\"available\">\n");
      out.write("                    </span>\n");
      out.write("                    <div class=\"input_div\">\n");
      out.write("\n");
      out.write("                        <div class=\"input_text\"> <input class=\"confirm_pass_type\" name=\"password\" type=\"password\" require required> <label>Security PIN</label> <i class=\"fa fa-eye-slash con_eye\"></i> </div>\n");
      out.write("                    </div>\n");
      out.write("                   \n");
      out.write("                    <div class=\"agree_submit\"> <span><i class=\"fa fa-check\"></i></span>\n");
      out.write("                        <p>I hereby declare that information provided in the online registration form is true to the best of my knowledge and I accept motes,terms,disclaimer and policies by clicking \"Submit Form\" button.</p>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"button step_2 step_4\"><button class=\"next_btn\">Submit&nbsp;<i class=\"fa fa-send\" style=\"font-size: 3.5vh;\"></i></button> </div>\n");
      out.write("                </div>\n");
      out.write("<!--                <div class=\"main \">\n");
      out.write("                    <div class=\"manage\">\n");
      out.write("                        <h3>Congratulations <span class=\"shown_name\"></span></h3>\n");
      out.write("                        <p>You Have Entered all details Successfully.</p>\n");
      out.write("                    </div> <svg class=\"checkmark\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 52 52\">\n");
      out.write("                        <circle class=\"checkmark__circle\" cx=\"26\" cy=\"26\" r=\"25\" fill=\"none\" />\n");
      out.write("                        <path class=\"checkmark__check\" fill=\"none\" d=\"M14.1 27.2l7.1 7.2 16.7-16.8\" /> </svg>\n");
      out.write("                        <div class=\"button step_1\"> <button class=\"next_btn\" >Login</button> </div>\n");
      out.write("                    </div>-->\n");
      out.write("                </div>\n");
      out.write("            </form>\n");
      out.write("            <!--</div>-->\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("<script type='text/javascript' src=''></script>\n");
      out.write("<script type='text/javascript' src=''></script>\n");
      out.write("<script type='text/javascript' src=''></script>\n");
      out.write("<script src=\"app.js\"></script>\n");
      out.write("\n");
      out.write("<script>\n");
      out.write("            function removeSpaces(string) {\n");
      out.write("            return string.split(' ').join('');\n");
      out.write("           }\n");
      out.write("</script>  \n");
      out.write("<script type=\"text/javascript\">\n");
      out.write("$(document).ready(function(){\n");
      out.write("   \n");
      out.write("    $(\"#username\").blur(function(){\n");
      out.write("        \n");
      out.write("        var username =$(\"#username\").val();\n");
      out.write("   \n");
      out.write("        if(username.length >= 3)\n");
      out.write("        {\n");
      out.write("            $.ajax({\n");
      out.write("                url:\"check.jsp\",\n");
      out.write("                type:\"post\",\n");
      out.write("                data:\"uname=\"+username,\n");
      out.write("                dataType:\"text\",\n");
      out.write("                success:function(data)\n");
      out.write("                {\n");
      out.write("                    $(\"#available\").html(data)\n");
      out.write("                } \n");
      out.write("            });\n");
      out.write("        }\n");
      out.write("        else\n");
      out.write("        {\n");
      out.write("          $(\"#available\").html(\" \");\n");
      out.write("        }\n");
      out.write("        \n");
      out.write("   }); \n");
      out.write("   \n");
      out.write("});    \n");
      out.write("</script>\n");
      out.write("</body>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
