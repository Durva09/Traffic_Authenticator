package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class tester_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\" class=\"menuitem-active\"><!-- Mirrored from coderthemes.com/hyper_2/saas/apps-calendar.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 20 Feb 2022 12:46:37 GMT --><head>\n");
      out.write("  <meta charset=\"utf-8\">\n");
      out.write("  <title>Dealer Dashboard</title>\n");
      out.write("  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("  <meta content=\"A fully featured admin theme which can be used to build CRM, CMS, etc.\" name=\"description\">\n");
      out.write("  <meta content=\"Coderthemes\" name=\"author\">\n");
      out.write("  <!-- App favicon -->\n");
      out.write("  <link rel=\"shortcut icon\" href=\"assets/images/favicon.ico\">\n");
      out.write("\n");
      out.write("  <!-- User Profile CSS  -->\n");
      out.write("  <link rel=\"stylesheet\" href=\"Additional Assets/user-profile.css\">\n");
      out.write("  <script src=\"https://code.jquery.com/jquery-1.10.2.min.js\"></script>\n");
      out.write("  <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@4.1.1/dist/js/bootstrap.bundle.min.js\"></script>\n");
      out.write("\n");
      out.write("  <!-- third party css -->\n");
      out.write("  <link href=\"assets/css/vendor/fullcalendar.min.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("  <!-- third party css end -->\n");
      out.write("\n");
      out.write("  <!-- App css -->\n");
      out.write("  <link href=\"assets/css/icons.min.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("  <link href=\"assets/css/app.min.css\" rel=\"stylesheet\" type=\"text/css\" id=\"light-style\">\n");
      out.write("  <link href=\"assets/css/app-dark.min.css\" rel=\"stylesheet\" type=\"text/css\" id=\"dark-style\" disabled=\"disabled\">\n");
      out.write("\n");
      out.write("  <link rel=\"stylesheet\" href=\"https://use.fontawesome.com/releases/v5.8.1/css/all.css\" integrity=\"sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf\" crossorigin=\"anonymous\">\n");
      out.write("  <script src=\"https://kit.fontawesome.com/a076d05399.js\" crossorigin=\"anonymous\"></script>\n");
      out.write("  <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css\">\n");
      out.write("  <style>\n");
      out.write("    .btn1 {\n");
      out.write("      max-width: 125px;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    .p1 {\n");
      out.write("      padding-right: 4rem;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    .date1 {\n");
      out.write("      font-size: 1.5rem;\n");
      out.write("      font-weight: 700;\n");
      out.write("      font-family: fantasy;\n");
      out.write("      margin: 0.2rem;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    @media screen and (max-width: 560px) {\n");
      out.write("      .media1 {\n");
      out.write("        padding-top: 3rem;\n");
      out.write("      }\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    @media (min-width: 576px) {\n");
      out.write("      .col-sm-6 {\n");
      out.write("        -webkit-box-flex: 0;\n");
      out.write("        -ms-flex: 0 0 auto;\n");
      out.write("        flex: 1 0 auto;\n");
      out.write("        width: 50%;\n");
      out.write("      }\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    @media (min-width: 992px) {\n");
      out.write("      .col-lg-3 {\n");
      out.write("        -webkit-box-flex: 0;\n");
      out.write("        -ms-flex: 0 0 auto;\n");
      out.write("        flex: 0 0 auto;\n");
      out.write("        width: 33%;\n");
      out.write("      }\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    .row {\n");
      out.write("      --bs-gutter-x: 0px;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    .fa-fingerprint:before {\n");
      out.write("      content: \"\\f577\";\n");
      out.write("      color: red;\n");
      out.write("\n");
      out.write("      font-size: 42px;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    .dripicons-download:before {\n");
      out.write("      color: green;\n");
      out.write("\n");
      out.write("      font-size: 38.7px;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    .dripicons-folder-open:before {\n");
      out.write("      color: #ffc409;\n");
      out.write("\n");
      out.write("      font-size: 42px;\n");
      out.write("    }\n");
      out.write("  </style>\n");
      out.write("</head>\n");
      out.write("     \n");
      out.write("<body class=\"show\" data-layout-config=\"{&quot;leftSideBarTheme&quot;:&quot;dark&quot;,&quot;layoutBoxed&quot;:false, &quot;leftSidebarCondensed&quot;:false, &quot;leftSidebarScrollable&quot;:false,&quot;darkMode&quot;:false, &quot;showRightSidebarOnStart&quot;: true}\" style=\"visibility: visible;\" data-leftbar-theme=\"dark\">\n");
 String userotp = (String)request.getAttribute("Message");
      if(userotp!=null)
      {  
      
      out.write("\n");
      out.write("      <script>\n");
      out.write("      $(document).ready(function(){\n");
      out.write("      $(\"#otp-modal\").modal('show');\n");
      out.write("      });\n");
      out.write("      </script>\n");
      out.write("      ");

       }  
      
      out.write("\n");
      out.write("      \n");
      out.write("      <form action=\"EmailSendingServlet\" method=\"post\">\n");
      out.write("          <input type=\"email\" name=\"recipient\">\n");
      out.write("          <input type=\"hidden\" name=\"page\" value=\"tester.jsp\">\n");
      out.write("          <input type=\"submit\" value=\"done\">\n");
      out.write("      </form>\n");
      out.write("      <!-- Enter OTP modal content -->\n");
      out.write("  <div id=\"otp-modal\" class=\"modal fade\" tabindex=\"-1\" role=\"dialog\" aria-hidden=\"true\">\n");
      out.write("    <div class=\"modal-dialog\">\n");
      out.write("        <div class=\"modal-content\">\n");
      out.write("\n");
      out.write("            <div class=\"modal-body\">\n");
      out.write("                <div class=\"text-center mt-2 mb-4\">\n");
      out.write("                    <a href=\"index.html\" class=\"text-success\">\n");
      out.write("                        <span><img src=\"assets/images/logo-dark.png\" alt=\"\" height=\"18\"></span>\n");
      out.write("                    </a>\n");
      out.write("                </div>\n");
      out.write("                <form class=\"ps-3 pe-3\" action=\"FinalServlet\" method=\"post\">\n");
      out.write("\n");
      out.write("                    <div class=\"mb-3\">\n");
      out.write("                        <label for=\"otp\" class=\"form-label\">Enter OTP</label>\n");
      out.write("                        <input class=\"form-control\" type=\"text\" name=\"otp\" id=\"otp\" required=\"\" placeholder=\"Enter OTP\">\n");
      out.write("                    </div>\n");
      out.write("                    <input type=\"hidden\" name=\"page\" value=\"dealermail\">\n");
      out.write("                    <input type=\"hidden\" name=\"userotp\" value=\"");
      out.print(userotp);
      out.write("\">\n");
      out.write("                    <div class=\"mb-3 text-center\">\n");
      out.write("                        <button class=\"btn btn-primary\"> Verify OTP</button>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                </form>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("        </div><!-- /.modal-content -->\n");
      out.write("    </div><!-- /.modal-dialog -->\n");
      out.write("</div><!-- /.modal -->\n");
      out.write("\n");
      out.write("</body></html>");
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
