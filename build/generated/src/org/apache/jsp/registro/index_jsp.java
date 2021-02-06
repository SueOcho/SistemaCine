package org.apache.jsp.registro;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(5);
    _jspx_dependants.add("/registro/../includes/meta.jsp");
    _jspx_dependants.add("/registro/../includes/styles.jsp");
    _jspx_dependants.add("/registro/../includes/header.jsp");
    _jspx_dependants.add("/registro/../includes/footer.jsp");
    _jspx_dependants.add("/registro/../includes/scripts.jsp");
  }

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
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\r\n");
      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("    ");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html\" charset=\"utf-8\">\r\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">");
      out.write("\r\n");
      out.write("    ");
      out.write("<link rel=\"stylesheet\" href=\"");
      out.print(request.getContextPath());
      out.write("/resources/css/bootstrap.min.css\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"");
      out.print(request.getContextPath());
      out.write("/resources/css/style.css\">\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"");
      out.print(request.getContextPath());
      out.write("/resources/fontawesome/css/all.min.css\">");
      out.write("\r\n");
      out.write("    <title>Registro | Solo Estrenos</title>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("    <div class=\"bkg_video\">\r\n");
      out.write("        <video playsinline autoplay loop poster=\"");
      out.print(request.getContextPath());
      out.write("/resources/images/blackwidow_banner-dest.webp\">\r\n");
      out.write("            <source src=\"");
      out.print(request.getContextPath());
      out.write("/resources/images/bkg_video.webm\">\r\n");
      out.write("        </video>\r\n");
      out.write("    </div>\r\n");
      out.write("    <div class=\"content\">\r\n");
      out.write("        ");
      out.write("<header>\r\n");
      out.write("    <nav class=\"navbar navbar-expand-lg navbar-light p-0\">\r\n");
      out.write("        <a class=\"navbar-brand\" href=\"");
      out.print(request.getContextPath());
      out.write("/index.jsp\">\r\n");
      out.write("            <img src=\"");
      out.print(request.getContextPath());
      out.write("/resources/images/logo.svg \" alt=\"\"><span>Solo estrenos</span>\r\n");
      out.write("        </a>\r\n");
      out.write("        <ul class=\"navbar-nav ml-auto\">\r\n");
      out.write("            <li>\r\n");
      out.write("                <a href=\"");
      out.print(request.getContextPath());
      out.write("/index.jsp\">Home</a>\r\n");
      out.write("            </li>\r\n");
      out.write("            <li>\r\n");
      out.write("                <a href=\"");
      out.print(request.getContextPath());
      out.write("/registro/index.jsp\">Login</a>\r\n");
      out.write("            </li>\r\n");
      out.write("        </ul>\r\n");
      out.write("    </nav>\r\n");
      out.write("</header>");
      out.write("\r\n");
      out.write("\r\n");
      out.write("        <div class=\"form\">\r\n");
      out.write("            <form action=\"usuarioc\" method=\"GET\">\r\n");
      out.write("                <input type=\"hidden\" id=\"processing\" name=\"processing\" value=\"registro\">\r\n");
      out.write("                <h2>Registrarse</h2>\r\n");
      out.write("                <div class=\"form-group pt-4\">\r\n");
      out.write("                    <label for=\"nombre\">Nombre:</label>\r\n");
      out.write("                    <input type=\"text\" class=\"form-control\" id=\"nombre\" name=\"nombre\">\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"form-group\">\r\n");
      out.write("                    <label for=\"apellido\">Apellido:</label>\r\n");
      out.write("                    <input type=\"text\" class=\"form-control\" id=\"apellido\" name=\"apellido\">\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"form-group\">\r\n");
      out.write("                    <label for=\"tipodoc\">Tipo de Documento de Identidad:</label>\r\n");
      out.write("                    <select class=\"form-control\" name=\"tipodoc\" id=\"tipodoc\">\r\n");
      out.write("                        <option value=\"0\">Seleccionar</option>\r\n");
      out.write("                        <option value=\"1\">DNI</option>\r\n");
      out.write("                        <option value=\"2\">C.E</option>\r\n");
      out.write("                    </select>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"form-group\">\r\n");
      out.write("                    <label for=\"numeroDocumento\">Documento de Identidad:</label>\r\n");
      out.write("                    <input type=\"text\" class=\"form-control\" id=\"numeroDocumento\" name=\"numeroDocumento\">\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"form-group\">\r\n");
      out.write("                    <label for=\"correo\">Correo electrónico:</label>\r\n");
      out.write("                    <input type=\"text\" class=\"form-control\" id=\"correo\" name=\"correo\">\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"form-group\">\r\n");
      out.write("                    <label for=\"contrasena\">Contraseña:</label>\r\n");
      out.write("                    <input type=\"password\" class=\"form-control\" id=\"contrasena\" name=\"contrasena\">\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"form-group\">\r\n");
      out.write("                    <label for=\"recontrasena\">Confirmar contraseña:</label>\r\n");
      out.write("                    <input type=\"password\" class=\"form-control\" id=\"recontrasena\" name=\"recontrasena\">\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"form-group\">\r\n");
      out.write("                    <input type=\"hidden\" id=\"idTipoUsuario\" name=\"idTipoUsuario\" value=\"3\">\r\n");
      out.write("                    <input type=\"hidden\" id=\"estado\" name=\"estado\" value=\"0\">\r\n");
      out.write("                    <input type=\"submit\" class=\"btn btn-primary btn-block my-4\" value=\"Registrarse\">\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"form-group mt-4\">\r\n");
      out.write("                    <p>Sí estás registrado, puedes:</p>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"form-group\">\r\n");
      out.write("                    <a href=\"");
      out.print(request.getContextPath());
      out.write("/login/index.jsp\" class=\"btn btn-success btn-block\">Iniciar Sesión</a>\r\n");
      out.write("                </div>\r\n");
      out.write("            </form>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("    ");
      out.write("<footer>\r\n");
      out.write("    <div class=\"container-fluid\">\r\n");
      out.write("        <div class=\"row\">\r\n");
      out.write("            <div class=\"col\">\r\n");
      out.write("                <p>\r\n");
      out.write("                    &copy; SOLO ESTRENOS.\r\n");
      out.write("                </p>\r\n");
      out.write("                <p>\r\n");
      out.write("                    All Rigths Reserved.\r\n");
      out.write("                </p>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("</footer>");
      out.write("\r\n");
      out.write("    ");
      out.write("<script src=\"");
      out.print(request.getContextPath());
      out.write("/resources/js/jquery-3.5.1.slim.min.js\"></script>\r\n");
      out.write("<script src=\"");
      out.print(request.getContextPath());
      out.write("/resources/js/popper.min.js\"></script>\r\n");
      out.write("<script src=\"");
      out.print(request.getContextPath());
      out.write("/resources/js/bootstrap.min.js\"></script>\r\n");
      out.write("<script src=\"");
      out.print(request.getContextPath());
      out.write("/resources/js/all.js\"></script>");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
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
