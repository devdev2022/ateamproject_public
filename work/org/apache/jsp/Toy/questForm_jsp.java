/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.62
 * Generated at: 2022-04-10 05:48:43 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.Toy;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class questForm_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("java.sql");
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
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
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
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
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");

if (request.getParameter("submit") != null) {
	Connection con = null;
	String url = "jdbc:mysql://192.168.10.211:3306/";
	String db = "amar";
	String driver = "com.mysql.jdbc.Driver";
	String userName = "amar";
	String pass = "amar123";

	try {
		Class.forName(driver);
		con = DriverManager.getConnection(url + db, userName, pass);

		try {
	Statement st = con.createStatement();
	String quest = request.getParameter("quest").toString();
	String QA = request.getParameter("QA").toString();
	String QB = request.getParameter("QB").toString();
	String QC = request.getParameter("QC").toString();
	String QD = request.getParameter("QD").toString();
	String correctAns = request.getParameter("correctAns").toString();
	out.println("quest : " + quest);

	String qry = "insert into question_deatil(quest,QA,QB,QC,QD,correctAns) values('" + quest + "','" + QA
			+ "','" + QB + "','" + QC + "','" + QD + "','" + correctAns + "')";

	out.println("qry : " + qry);

	int val = st.executeUpdate(qry);

	con.close();
	if (val > 0) {
		
		response.sendRedirect("QuizApplication.jsp");
	}

		}

		catch (SQLException ex) {
	System.out.println("SQL satatment not found");
		}
	} catch (Exception e) {
		e.printStackTrace();
	}
}

      out.write("\r\n");
      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("<title>Quiz application in jsp</title>\r\n");
      out.write("<head>\r\n");
      out.write("\r\n");
      out.write("<script>\r\n");
      out.write("	function validateForm(theForm) {\r\n");
      out.write("\r\n");
      out.write("		if (theForm.quest.value == \"\") {\r\n");
      out.write("			//Please enter username\r\n");
      out.write("			alert(\"Please enter Question.\");\r\n");
      out.write("			theForm.quest.focus();\r\n");
      out.write("			return false;\r\n");
      out.write("		}\r\n");
      out.write("\r\n");
      out.write("		return true;\r\n");
      out.write("	}\r\n");
      out.write("</script>\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("	<br>\r\n");
      out.write("	<br />\r\n");
      out.write("	<center>\r\n");
      out.write("\r\n");
      out.write("		<table border=\"1\" width=\"450px\" bgcolor=\"pink\" cellspacing=\"0\"\r\n");
      out.write("			cellpadding=\"0\">\r\n");
      out.write("			<tr>\r\n");
      out.write("				<td width=\"100%\">\r\n");
      out.write("					<form method=\"POST\" action=\"\" onsubmit=\"return validateForm(this);\">\r\n");
      out.write("\r\n");
      out.write("						<h2 align=\"center\">\r\n");
      out.write("							<font color=\"red\">Quiz Application in JSP</font>\r\n");
      out.write("						</h2>\r\n");
      out.write("						<table border=\"0\" width=\"400px\" cellspacing=\"2\" cellpadding=\"4\">\r\n");
      out.write("							<tr>\r\n");
      out.write("								<td width=\"50%\"><b>Enter Question:</b></td>\r\n");
      out.write("								<td width=\"50%\"><input type=\"text\" name=\"quest\" size=\"40\" />\r\n");
      out.write("								</td>\r\n");
      out.write("							</tr>\r\n");
      out.write("							<tr>\r\n");
      out.write("								<td width=\"50%\"><b>Enter Answer(A.):</b></td>\r\n");
      out.write("								<td width=\"50%\"><input type=\"text\" name=\"QA\" size=\"40\" /></td>\r\n");
      out.write("							</tr>\r\n");
      out.write("							<tr>\r\n");
      out.write("								<td width=\"50%\"><b>Enter Answer(B.):</b></td>\r\n");
      out.write("								<td width=\"50%\"><input type=\"text\" name=\"QB\" size=\"40\" /></td>\r\n");
      out.write("							</tr>\r\n");
      out.write("\r\n");
      out.write("							<tr>\r\n");
      out.write("								<td width=\"50%\"><b>Enter Answer(C.):</b></td>\r\n");
      out.write("								<td width=\"50%\"><input type=\"text\" name=\"QC\" size=\"40\" /></td>\r\n");
      out.write("							</tr>\r\n");
      out.write("\r\n");
      out.write("							<tr>\r\n");
      out.write("								<td width=\"50%\"><b>Enter Answer(D.):</b></td>\r\n");
      out.write("								<td width=\"50%\"><input type=\"text\" name=\"QD\" size=\"40\" /></td>\r\n");
      out.write("							</tr>\r\n");
      out.write("\r\n");
      out.write("							<tr>\r\n");
      out.write("								<td width=\"50%\"><b>Correct Answer:</b></td>\r\n");
      out.write("								<td width=\"50%\"><input type=\"text\" name=\"correctAns\"\r\n");
      out.write("									size=\"10\" /></td>\r\n");
      out.write("							</tr>\r\n");
      out.write("\r\n");
      out.write("						</table>\r\n");
      out.write("						<center>\r\n");
      out.write("							<p>\r\n");
      out.write("								<input type=\"submit\" value=\"Submit\" name=\"submit\"> <input\r\n");
      out.write("									type=\"reset\" value=\"Reset\" name=\"reset\">\r\n");
      out.write("							</p>\r\n");
      out.write("						</center>\r\n");
      out.write("					</form>\r\n");
      out.write("				</td>\r\n");
      out.write("			</tr>\r\n");
      out.write("		</table>\r\n");
      out.write("	</center>\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
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
