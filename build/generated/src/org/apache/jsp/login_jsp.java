package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("    <meta charset=\"utf-8\" />\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\" />\n");
      out.write("    <title>Login</title>\n");
      out.write("    <link rel=\"shortcut icon\" href=\"assets/images/traffic_logo.png\" type=\"image/x-icon\">\n");
      out.write("   \n");
      out.write("    <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/css/bootstrap.min.css\" rel=\"stylesheet\" />\n");
      out.write("    <link href=\"\" rel=\"stylesheet\" />\n");
      out.write("    <script type=\"text/javascript\" src=\"https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js\"></script>\n");
      out.write("    <link rel=\"stylesheet\" href=\"style.css\" />\n");
      out.write("    <style>\n");
      out.write("      body {\n");
      out.write("        background-color: #f5f8f9;\n");
      out.write("      }\n");
      out.write("\n");
      out.write("      .card {\n");
      out.write("        width: 400px;\n");
      out.write("        border-radius: 10px;\n");
      out.write("      }\n");
      out.write("\n");
      out.write("      .btr {\n");
      out.write("        border-top-right-radius: 5px !important;\n");
      out.write("      }\n");
      out.write("\n");
      out.write("      .btl {\n");
      out.write("        border-top-left-radius: 5px !important;\n");
      out.write("      }\n");
      out.write("\n");
      out.write("      .nav-pills {\n");
      out.write("        display: table !important;\n");
      out.write("        width: 100%;\n");
      out.write("      }\n");
      out.write("\n");
      out.write("      .nav-pills .nav-link {\n");
      out.write("        border-top-left-radius: 10px;\n");
      out.write("        border-bottom: 1px solid blue;\n");
      out.write("      }\n");
      out.write("\n");
      out.write("      .nav-item {\n");
      out.write("        display: table-cell;\n");
      out.write("        background: #0d6efd2e;\n");
      out.write("      }\n");
      out.write("\n");
      out.write("      .form {\n");
      out.write("        padding: 10px;\n");
      out.write("        height: 250px;\n");
      out.write("      }\n");
      out.write("\n");
      out.write("      .form input {\n");
      out.write("        margin-bottom: 12px;\n");
      out.write("      }\n");
      out.write("\n");
      out.write("      .form input:focus {\n");
      out.write("        box-shadow: none;\n");
      out.write("      }\n");
      out.write("\n");
      out.write("      .form button {\n");
      out.write("        margin-top: -25px;\n");
      out.write("      }\n");
      out.write("    </style>\n");
      out.write("    </head>\n");
      out.write("    <body oncontextmenu=\"return false\" class=\"snippet-body\">\n");
      out.write("    <div class=\"d-flex justify-content-center align-items-center mt-5\">\n");
      out.write("      <div class=\"card\">\n");
      out.write("        <ul class=\"nav nav-pills mb-3\" id=\"pills-tab\" role=\"tablist\">\n");
      out.write("          <li class=\"nav-item text-center\">\n");
      out.write("            <a\n");
      out.write("              class=\"nav-link active btl\"\n");
      out.write("              id=\"pills-home-tab\"\n");
      out.write("              data-toggle=\"pill\"\n");
      out.write("              href=\"#pills-home\"\n");
      out.write("              role=\"tab\"\n");
      out.write("              aria-controls=\"pills-home\"\n");
      out.write("              aria-selected=\"true\"\n");
      out.write("              >Login With Aadhar No.</a\n");
      out.write("            >\n");
      out.write("          </li>\n");
      out.write("          <li class=\"nav-item text-center\">\n");
      out.write("            <a\n");
      out.write("              class=\"nav-link btr\"\n");
      out.write("              id=\"pills-profile-tab\"\n");
      out.write("              data-toggle=\"pill\"\n");
      out.write("              href=\"#pills-profile\"\n");
      out.write("              role=\"tab\"\n");
      out.write("              aria-controls=\"pills-profile\"\n");
      out.write("              aria-selected=\"false\"\n");
      out.write("              >Login With User ID</a\n");
      out.write("            >\n");
      out.write("          </li>\n");
      out.write("        </ul>\n");
      out.write("        <div class=\"tab-content\" id=\"pills-tabContent\">\n");
      out.write("          <div\n");
      out.write("            class=\"tab-pane fade show active\"\n");
      out.write("            id=\"pills-home\"\n");
      out.write("            role=\"tabpanel\"\n");
      out.write("            aria-labelledby=\"pills-home-tab\"\n");
      out.write("          >\n");
      out.write("<!--            <div class=\"form px-4 pt-5\">-->\n");
      out.write("            <form method=\"post\" class=\"form px-4 pt-5\" action=\"CitizenLoginCheckerServlet\">\n");
      out.write("              <div class=\"input_div\">\n");
      out.write("                <div class=\"input_text\" style=\"margin-top: -40px\">\n");
      out.write("                  <input type=\"text\" onkeyup=\"this.value=removeSpaces(this.value);\" name=\"aadhar\" require required />\n");
      out.write("                  <label>Enter Aadhar No.</label>\n");
      out.write("                </div>\n");
      out.write("              </div>\n");
      out.write("              <div class=\"input_div\">\n");
      out.write("                <div class=\"input_text\">\n");
      out.write("                  <input type=\"password\" name=\"password\" require required />\n");
      out.write("                  <label>Enter PIN</label>\n");
      out.write("                </div>\n");
      out.write("              </div>\n");
      out.write("                <input type=\"hidden\" name=\"mode\" value=\"aadhar\">\n");
      out.write("              <div class=\"button step_1\" style=\"margin-top: 13%\">\n");
      out.write("                <button class=\"next_btn\">\n");
      out.write("                  Login&nbsp;\n");
      out.write("                  <i\n");
      out.write("                    class=\"fa fa-arrow-circle-right\"\n");
      out.write("                    style=\"font-size: 3vh\"\n");
      out.write("                  ></i>\n");
      out.write("                </button>\n");
      out.write("              </div>\n");
      out.write("<!--            </div>-->\n");
      out.write("            </form>\n");
      out.write("          </div>\n");
      out.write("          <div\n");
      out.write("            class=\"tab-pane fade\"\n");
      out.write("            id=\"pills-profile\"\n");
      out.write("            role=\"tabpanel\"\n");
      out.write("            aria-labelledby=\"pills-profile-tab\"\n");
      out.write("          >\n");
      out.write("<!--            <div class=\"form px-4\">-->\n");
      out.write("             <form method=\"post\" class=\"form px-4 pt-5\" action=\"CitizenLoginCheckerServlet\">\n");
      out.write("              <div class=\"input_div\">\n");
      out.write("                <div class=\"input_text\">\n");
      out.write("                  <input type=\"text\" onkeyup=\"this.value=removeSpaces(this.value);\" name=\"userid\" require required />\n");
      out.write("                  <label>Enter User ID</label>\n");
      out.write("                </div>\n");
      out.write("              </div>\n");
      out.write("              <div class=\"input_div\">\n");
      out.write("                <div class=\"input_text\">\n");
      out.write("                  <input type=\"password\" name=\"password\" require required />\n");
      out.write("                  <label>Enter PIN</label>\n");
      out.write("                </div>\n");
      out.write("              </div>\n");
      out.write("                <input type=\"hidden\" name=\"mode\" value=\"userid\">\n");
      out.write("              <div class=\"button step_1\" style=\"margin-top: 13%\">\n");
      out.write("                <button class=\"next_btn\">\n");
      out.write("                  Login&nbsp;\n");
      out.write("                  <i\n");
      out.write("                    class=\"fa fa-arrow-circle-right\"\n");
      out.write("                    style=\"font-size: 3vh\"\n");
      out.write("                  ></i>\n");
      out.write("                </button>\n");
      out.write("              </div>\n");
      out.write("<!--            </div>-->\n");
      out.write("             </form>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("        \n");
      out.write("        <script>\n");
      out.write("            function removeSpaces(string) {\n");
      out.write("            return string.split(' ').join('');\n");
      out.write("           }\n");
      out.write("        </script>    \n");
      out.write("    <script type=\"text/javascript\" src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/js/bootstrap.bundle.min.js\"></script>\n");
      out.write("    <script type=\"text/javascript\" src=\"\"></script>\n");
      out.write("    <script type=\"text/javascript\" src=\"\"></script>\n");
      out.write("    <script type=\"text/Javascript\"></script>\n");
      out.write("    \n");
      out.write("    </body>\n");
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
