package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class userGetOTP_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\">\n");
      out.write("<title>Get OTP</title>\n");
      out.write("    <link\n");
      out.write("      href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\"\n");
      out.write("      rel=\"stylesheet\"\n");
      out.write("    />\n");
      out.write("    <script\n");
      out.write("      type=\"text/javascript\"\n");
      out.write("      src=\"https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js\"\n");
      out.write("    ></script>\n");
      out.write("    <link rel=\"stylesheet\" href=\"style.css\" />\n");
      out.write("    <style>\n");
      out.write("      .container .card {\n");
      out.write("        height: auto;\n");
      out.write("        min-height: 176px;\n");
      out.write("      }\n");
      out.write("    </style>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    <div class=\"container\">\n");
      out.write("      <div class=\"card\">\n");
      out.write("         <form action=\"EmailSendingServlet\" class=\"form\" method=\"post\">\n");
      out.write("          <div class=\"right-side\">\n");
      out.write("            <div class=\"main active\">\n");
      out.write("              <div\n");
      out.write("                class=\"manage\"\n");
      out.write("                style=\"\n");
      out.write("                  margin: 0px;\n");
      out.write("                  padding: 0%;\n");
      out.write("                  font-size: 10px;\n");
      out.write("                  font-weight: bolder;\n");
      out.write("                  \">\n");
      out.write("                  \n");
      out.write("                <h1>Creating account is fast and easy!</h1>\n");
      out.write("              </div>\n");
      out.write("              <div class=\"input_div\">\n");
      out.write("                <div class=\"input_text\">\n");
      out.write("                    <input type=\"hidden\" name=\"page\" value=\"verify_otp.jsp\">\n");
      out.write("                  <input type=\"email\" name=\"recipient\" id=\"username\" require required />\n");
      out.write("                  <label>Enter Email</label>\n");
      out.write("                </div>\n");
      out.write("              </div>\n");
      out.write("                <span id=\"available\"> <!--- data show this span tag --->\n");
      out.write("                </span>\n");
      out.write("              <div id=\"but\">\n");
      out.write("                \n");
      out.write("              </div>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("        </form>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("    \n");
      out.write("<script type=\"text/javascript\">\n");
      out.write("$(document).ready(function(){\n");
      out.write("   \n");
      out.write("    $(\"#username\").blur(function(){\n");
      out.write("        \n");
      out.write("        var username =$(\"#username\").val();\n");
      out.write("   \n");
      out.write("        if(username.length >= 3)\n");
      out.write("        {\n");
      out.write("            console.log(\"hey\");\n");
      out.write("            $.ajax({\n");
      out.write("                url:\"check.jsp\",\n");
      out.write("                type:\"post\",\n");
      out.write("                data:\"uname=\"+username,\n");
      out.write("                dataType:\"text\",\n");
      out.write("                success:function(data)\n");
      out.write("                {\n");
      out.write("                    $(\"#available\").html(data)\n");
      out.write("                    $(\"#but\").html(info)\n");
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
      out.write("    \n");
      out.write("</body>\n");
      out.write("</html>\n");
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
