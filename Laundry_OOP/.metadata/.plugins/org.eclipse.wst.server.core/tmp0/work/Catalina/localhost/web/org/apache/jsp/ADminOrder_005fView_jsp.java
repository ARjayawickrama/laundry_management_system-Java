/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.82
 * Generated at: 2024-04-09 04:44:41 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;

public final class ADminOrder_005fView_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("java.sql.ResultSet");
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET, POST or HEAD. Jasper also permits OPTIONS");
        return;
      }
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


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

      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("    <meta charset=\"UTF-8\">\r\n");
      out.write("    <title>View Orders</title>\r\n");
      out.write("    <style>\r\n");
      out.write("   /* Your CSS styles */\r\n");
      out.write("        body {\r\n");
      out.write("            font-family: Arial, sans-serif;\r\n");
      out.write("            margin: 0;\r\n");
      out.write("            padding: 0;\r\n");
      out.write("            background-color: #f8f8f8;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        table {\r\n");
      out.write("         margin-top: 100px;\r\n");
      out.write("            border-collapse: collapse;\r\n");
      out.write("            width: 80%;\r\n");
      out.write("            background-color: #fff;\r\n");
      out.write("            border-radius: 5px;\r\n");
      out.write("            overflow: hidden;\r\n");
      out.write("            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);\r\n");
      out.write("            \r\n");
      out.write("        }\r\n");
      out.write("        table{\r\n");
      out.write("                 top: 20%;\r\n");
      out.write("          position: absolute;\r\n");
      out.write("  left: 50%;\r\n");
      out.write("  transform: translateX(-50%);\r\n");
      out.write("        \r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        th, td {\r\n");
      out.write("            border: 1px solid #ddd;\r\n");
      out.write("            padding: 12px;\r\n");
      out.write("            text-align: left;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        th {\r\n");
      out.write("            background-color: #f2f2f2;\r\n");
      out.write("            color: #333;\r\n");
      out.write("            font-weight: bold;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        tr:nth-child(even) {\r\n");
      out.write("            background-color: #f9f9f9;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        tr:hover {\r\n");
      out.write("            background-color: #f5f5f5;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        a {\r\n");
      out.write("            text-decoration: none;\r\n");
      out.write("            color: #007bff;\r\n");
      out.write("            transition: color 0.3s ease;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        a:hover {\r\n");
      out.write("            color: #0056b3;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        button {\r\n");
      out.write("            padding: 6px 10px;\r\n");
      out.write("            background-color: #dc3545;\r\n");
      out.write("            color: #fff;\r\n");
      out.write("            border: none;\r\n");
      out.write("            border-radius: 3px;\r\n");
      out.write("            cursor: pointer;\r\n");
      out.write("            transition: background-color 0.3s ease;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        button:hover {\r\n");
      out.write("            background-color: #c82333;\r\n");
      out.write("        }\r\n");
      out.write("      .Edit1{\r\n");
      out.write("          padding: 6px 10px;\r\n");
      out.write("            background-color: #dc3545;\r\n");
      out.write("            color: #fff;\r\n");
      out.write("            border: none;\r\n");
      out.write("            border-radius: 3px;\r\n");
      out.write("            cursor: pointer;\r\n");
      out.write("            transition: background-color 0.3s ease;\r\n");
      out.write("      \r\n");
      out.write("      }\r\n");
      out.write("      .bac{\r\n");
      out.write("        padding: 6px 10px;\r\n");
      out.write("      \r\n");
      out.write("            background-color: #dc3545;\r\n");
      out.write("            color: #fff;\r\n");
      out.write("            border: none;\r\n");
      out.write("            border-radius: 3px;\r\n");
      out.write("            cursor: pointer;\r\n");
      out.write("            transition: background-color 0.3s ease;\r\n");
      out.write("      }\r\n");
      out.write("        .closeMain {\r\n");
      out.write("            position: absolute;\r\n");
      out.write("            top: 2%;\r\n");
      out.write("            left: 0%;\r\n");
      out.write("        }\r\n");
      out.write("         body {\r\n");
      out.write("        font-family: Arial, sans-serif;\r\n");
      out.write("        margin: 0;\r\n");
      out.write("        padding: 0;\r\n");
      out.write("        background-color: #f8f8f8;\r\n");
      out.write("    }\r\n");
      out.write("\r\n");
      out.write("    /* New CSS styles */\r\n");
      out.write("    .buttona {\r\n");
      out.write("        /* Your button styles */\r\n");
      out.write("        /* Example: */\r\n");
      out.write("        background-color: #007bff;\r\n");
      out.write("        color: #fff;\r\n");
      out.write("        padding: 6px 10px;\r\n");
      out.write("        border: none;\r\n");
      out.write("        border-radius: 3px;\r\n");
      out.write("        cursor: pointer;\r\n");
      out.write("        transition: background-color 0.3s ease;\r\n");
      out.write("    }\r\n");
      out.write("        \r\n");
      out.write("           \r\n");
      out.write("    </style>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write(" \r\n");
      out.write("<div>\r\n");
      out.write("    <table>\r\n");
      out.write("        <tr>\r\n");
      out.write("            <th>id</th>\r\n");
      out.write("            <th>CustomerID</th>\r\n");
      out.write("            <th>OrderDate</th>\r\n");
      out.write("            <th>clothType</th>\r\n");
      out.write("            <th>weight</th>\r\n");
      out.write("            <th>Edit</th>\r\n");
      out.write("            <th>Delete</th>\r\n");
      out.write("        </tr>\r\n");
      out.write("        ");

        ResultSet rs3 = (ResultSet) request.getAttribute("resultSet");
        if (rs3 != null) {
            while (rs3.next()) {
        
      out.write("\r\n");
      out.write("        <tr>\r\n");
      out.write("            <td>");
      out.print( rs3.getString("id") );
      out.write("</td>\r\n");
      out.write("            <td>");
      out.print( rs3.getString("CustomerID") );
      out.write("</td>\r\n");
      out.write("            <td>");
      out.print( rs3.getString("OrderDate") );
      out.write("</td>\r\n");
      out.write("            <td>");
      out.print( rs3.getString("clothType") );
      out.write("</td>\r\n");
      out.write("            <td>");
      out.print( rs3.getString("weight") );
      out.write("</td>\r\n");
      out.write("            <td>\r\n");
      out.write("            <form action=\"UpdateOrder\" method=\"post\">\r\n");
      out.write("                <a class=\"buttona\" href=\"UpdateOrder.jsp?id=");
      out.print( rs3.getString("id") );
      out.write("&CustomerID=");
      out.print( rs3.getString("CustomerID") );
      out.write("&OrderDate=");
      out.print( rs3.getString("OrderDate") );
      out.write("&clothType=");
      out.print( rs3.getString("clothType") );
      out.write("&weight=");
      out.print( rs3.getString("weight") );
      out.write("\">Edit</a>\r\n");
      out.write("                </form>\r\n");
      out.write("            </td>\r\n");
      out.write("            <td>\r\n");
      out.write("                <form action=\"Delete_Order\" method=\"get\">\r\n");
      out.write("                    <input type=\"hidden\" name=\"order_id\" value=\"");
      out.print( rs3.getInt("id") );
      out.write("\">\r\n");
      out.write("                    <button class=\"buttona\" type=\"submit\">Delete</button>\r\n");
      out.write("                </form>\r\n");
      out.write("            </td>\r\n");
      out.write("        </tr>\r\n");
      out.write("        ");

            }
        } else {
        
      out.write("\r\n");
      out.write("        <tr>\r\n");
      out.write("            <td colspan=\"7\">No records found</td>\r\n");
      out.write("        </tr>\r\n");
      out.write("        ");

        }
        
      out.write("\r\n");
      out.write("    </table>\r\n");
      out.write("</div>\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
      out.write("\r\n");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
