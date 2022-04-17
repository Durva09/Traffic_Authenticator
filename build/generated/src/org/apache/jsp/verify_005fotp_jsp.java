package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class verify_005fotp_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html; charset=ISO-8859-1");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\"\n");
      out.write("     \"http://www.w3.org/TR/html4/loose.dtd\">\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\">\n");
      out.write("<title>Verify</title>\n");
      out.write("    <link href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css' rel='stylesheet'>\n");
      out.write("    <script type='text/javascript' src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>\n");
      out.write("    <link rel=\"stylesheet\" href=\"style.css\">\n");
      out.write("    <style>\n");
      out.write("      .container .card {\n");
      out.write("        height: 300px;\n");
      out.write("      }\n");
      out.write("    </style>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write(" \n");
      out.write("    <div class=\"container\">\n");
      out.write("    ");
String b=(String)request.getAttribute("Message");
      if(b==null)
      {
          response.sendRedirect("userGetOTP.jsp");
      }
      out.write("\n");
      out.write("        \n");
      out.write("    \n");
      out.write("    <div class=\"card\">\n");
      out.write("        <form class=\"form\" method=\"Post\" action=\"FinalServlet\">\n");
      out.write("            <input type=\"hidden\" name=\"userotp\" ");
      out.print(request.getAttribute("Message"));
      out.write(">\n");
      out.write("            <div class=\"right-side \">\n");
      out.write("                <div class=\"main active\">\n");
      out.write("                    <div class=\"manage\" style=\"margin: 0px; padding: 0%; font-size: 10px;font-weight: bolder;\">\n");
      out.write("                        <h1>Creating account is fast and easy!</h1>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"input_div\">\n");
      out.write("                        <div class=\"input_text\"> <input type=\"text\" name=\"otp\" require required> <label>Enter OTP</label><div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"button step_1\" style=\"margin-top:13%;\"> \n");
      out.write("                        <button value=\"submit\" class=\"next_btn\">Verify OTP&nbsp;\n");
      out.write("                        <i class=\"fa fa-arrow-circle-right\" style=\"font-size:3vh;\"></i>\n");
      out.write("                        </button>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("    </div>\n");
      out.write("</div> \n");
      out.write("</form>\n");
      out.write("</div>\n");
      out.write("</div>  \n");
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
