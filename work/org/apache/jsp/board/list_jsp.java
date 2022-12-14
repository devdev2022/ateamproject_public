/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.62
 * Generated at: 2022-05-01 06:25:54 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.board;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import board.BoardBean;
import java.util.Vector;
import board.UtilMgr;

public final class list_jsp extends org.apache.jasper.runtime.HttpJspBase
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
    _jspx_imports_classes.add("board.BoardBean");
    _jspx_imports_classes.add("java.util.Vector");
    _jspx_imports_classes.add("board.UtilMgr");
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
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP?????? ?????? GET, POST ?????? HEAD ??????????????? ???????????????. Jasper??? OPTIONS ????????? ?????? ???????????????.");
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
      response.setContentType("text/html; charset=EUC-KR");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("<!-- list.jsp -->\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      board.BoardMgr mgr = null;
      mgr = (board.BoardMgr) _jspx_page_context.getAttribute("mgr", javax.servlet.jsp.PageContext.PAGE_SCOPE);
      if (mgr == null){
        mgr = new board.BoardMgr();
        _jspx_page_context.setAttribute("mgr", mgr, javax.servlet.jsp.PageContext.PAGE_SCOPE);
      }
      out.write('\r');
      out.write('\n');
      board.BCommentMgr cmgr = null;
      cmgr = (board.BCommentMgr) _jspx_page_context.getAttribute("cmgr", javax.servlet.jsp.PageContext.PAGE_SCOPE);
      if (cmgr == null){
        cmgr = new board.BCommentMgr();
        _jspx_page_context.setAttribute("cmgr", cmgr, javax.servlet.jsp.PageContext.PAGE_SCOPE);
      }
      out.write('\r');
      out.write('\n');

		int totalRecord = 0;//???????????????
        int numPerPage = 10;//???????????? ????????? ??????(5,10,15,30)
        int pagePerBlock = 15;//????????? ????????? ??????
        int totalPage = 0;//??? ????????? ??????
        int totalBlock = 0;//??? ?????? ??????
        int nowPage = 1;//?????? ?????????
        int nowBlock = 1;//?????? ??????
        
        if(request.getParameter("numPerPage")!=null){
        	numPerPage = UtilMgr.parseInt(request, "numPerPage");
        }
        
        //????????? ????????? ??????
        String keyField = "" , keyWord = "";
        if(request.getParameter("keyWord")!=null){
        	keyField = request.getParameter("keyField");
        	keyWord = request.getParameter("keyWord");
        }
        
        //?????? ?????? ?????? ?????? ????????? ??????
         if(request.getParameter("reload")!=null&&
        		 request.getParameter("reload").equals("true")){
        	keyField = ""; keyWord = "";
        } 
        
        totalRecord = mgr.getTotalCount(keyField, keyWord);
        //out.print(totalRecord);
        
        //????????? ?????? ?????? ?????? ??????????????? ??????
        if(request.getParameter("nowPage")!=null){
        	nowPage = UtilMgr.parseInt(request, "nowPage");
        }
        
        //sql??? limit??? ???????????? ?????? ??????
        int start = (nowPage*numPerPage)-numPerPage;
        int cnt = numPerPage;//default 10
        
        //?????? ????????? ??????
        totalPage = (int)Math.ceil((double)totalRecord/numPerPage);
        //?????? ?????? ??????
        totalBlock = (int)Math.ceil((double)totalPage/pagePerBlock);
        //?????? ??????
        nowBlock = (int)Math.ceil((double)nowPage/pagePerBlock);

      out.write("		\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("	<title>JSP Board</title>\r\n");
      out.write("	<link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3\" crossorigin=\"anonymous\">\r\n");
      out.write("	<script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js\" integrity=\"sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p\" crossorigin=\"anonymous\"></script>\r\n");
      out.write("	\r\n");
      out.write("<link href=\"style.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("	function pageing(page) {\r\n");
      out.write("		document.readFrm.nowPage.value = page;\r\n");
      out.write("		document.readFrm.submit();\r\n");
      out.write("	}\r\n");
      out.write("	\r\n");
      out.write("	function block(block) {\r\n");
      out.write("		document.readFrm.nowPage.value =\r\n");
      out.write("		");
      out.print(pagePerBlock);
      out.write("*(block-1)+1;\r\n");
      out.write("		document.readFrm.submit();\r\n");
      out.write("	}\r\n");
      out.write("	\r\n");
      out.write("	function numPerFn(numPerPage) {\r\n");
      out.write("		document.readFrm.numPerPage.value = numPerPage;\r\n");
      out.write("		document.readFrm.submit();\r\n");
      out.write("	}\r\n");
      out.write("	\r\n");
      out.write("	function list() {\r\n");
      out.write("		document.listFrm.action = \"list.jsp\";\r\n");
      out.write("		document.listFrm.submit();\r\n");
      out.write("	}\r\n");
      out.write("	\r\n");
      out.write("	function check() {\r\n");
      out.write("		if(document.searchFrm.keyWord.value==\"\"){\r\n");
      out.write("			alert(\"???????????? ???????????????.\");\r\n");
      out.write("			document.searchFrm.keyWord.focus();\r\n");
      out.write("			return;\r\n");
      out.write("		}\r\n");
      out.write("		document.searchFrm.submit();\r\n");
      out.write("	}\r\n");
      out.write("	\r\n");
      out.write("	function read(num) {\r\n");
      out.write("		document.readFrm.num.value = num;\r\n");
      out.write("		document.readFrm.action = \"read.jsp\";\r\n");
      out.write("		document.readFrm.submit();\r\n");
      out.write("	}\r\n");
      out.write("</script>\r\n");
      out.write("</head>\r\n");
      out.write("<body bgcolor=\"#FFFFCC\" >\r\n");
      out.write("<div align=\"center\"><br/>\r\n");
      out.write("<h2>JSP Board</h2><br/>\r\n");
      out.write("		<div class=\"row\">\r\n");
      out.write("			<div class=\"col-md-4\" style=\"background-color: red;\">\r\n");
      out.write("				A\r\n");
      out.write("			</div>\r\n");
      out.write("			<div class=\"col-md-4\" style=\"background-color: yellow;\">\r\n");
      out.write("				B\r\n");
      out.write("			</div>\r\n");
      out.write("			<div class=\"col-md-4\" style=\"background-color: blue;\">\r\n");
      out.write("				C\r\n");
      out.write("			</div>\r\n");
      out.write("			<div class=\"alert alert-info\" role=\"alert\">?????? ???????????? ???????????? ????????????!</div>\r\n");
      out.write("		</div>\r\n");
      out.write("			\r\n");
      out.write("\r\n");
      out.write("		<div><span class=\"\">HipHople ???????????????</span>\r\n");
      out.write("		<h1> <span class=\"badge bg-secondary\">New</span></h1>\r\n");
      out.write("\r\n");
      out.write("		\r\n");
      out.write("		<div class=\"accordion\" id=\"accordionExample\">\r\n");
      out.write("  <div class=\"accordion-item\">\r\n");
      out.write("    <h2 class=\"accordion-header\" id=\"headingOne\">\r\n");
      out.write("      <button class=\"accordion-button\" type=\"button\" data-bs-toggle=\"collapse\" data-bs-target=\"#collapseOne\" aria-expanded=\"true\" aria-controls=\"collapseOne\">\r\n");
      out.write("        Accordion Item #1\r\n");
      out.write("      </button>\r\n");
      out.write("    </h2>\r\n");
      out.write("    <div id=\"collapseOne\" class=\"accordion-collapse collapse show\" aria-labelledby=\"headingOne\" data-bs-parent=\"#accordionExample\">\r\n");
      out.write("      <div class=\"accordion-body\">\r\n");
      out.write("        <strong>This is the first item's accordion body.</strong> It is shown by default, until the collapse plugin adds the appropriate classes that we use to style each element. These classes control the overall appearance, as well as the showing and hiding via CSS transitions. You can modify any of this with custom CSS or overriding our default variables. It's also worth noting that just about any HTML can go within the <code>.accordion-body</code>, though the transition does limit overflow.\r\n");
      out.write("      </div>\r\n");
      out.write("    </div>\r\n");
      out.write("  </div>\r\n");
      out.write("  <div class=\"accordion-item\">\r\n");
      out.write("    <h2 class=\"accordion-header\" id=\"headingTwo\">\r\n");
      out.write("      <button class=\"accordion-button collapsed\" type=\"button\" data-bs-toggle=\"collapse\" data-bs-target=\"#collapseTwo\" aria-expanded=\"false\" aria-controls=\"collapseTwo\">\r\n");
      out.write("        Accordion Item #2\r\n");
      out.write("      </button>\r\n");
      out.write("    </h2>\r\n");
      out.write("    <div id=\"collapseTwo\" class=\"accordion-collapse collapse\" aria-labelledby=\"headingTwo\" data-bs-parent=\"#accordionExample\">\r\n");
      out.write("      <div class=\"accordion-body\">\r\n");
      out.write("        <strong>This is the second item's accordion body.</strong> It is hidden by default, until the collapse plugin adds the appropriate classes that we use to style each element. These classes control the overall appearance, as well as the showing and hiding via CSS transitions. You can modify any of this with custom CSS or overriding our default variables. It's also worth noting that just about any HTML can go within the <code>.accordion-body</code>, though the transition does limit overflow.\r\n");
      out.write("      </div>\r\n");
      out.write("    </div>\r\n");
      out.write("  </div>\r\n");
      out.write("  <div class=\"accordion-item\">\r\n");
      out.write("    <h2 class=\"accordion-header\" id=\"headingThree\">\r\n");
      out.write("      <button class=\"accordion-button collapsed\" type=\"button\" data-bs-toggle=\"collapse\" data-bs-target=\"#collapseThree\" aria-expanded=\"false\" aria-controls=\"collapseThree\">\r\n");
      out.write("        Accordion Item #3\r\n");
      out.write("      </button>\r\n");
      out.write("    </h2>\r\n");
      out.write("    <div id=\"collapseThree\" class=\"accordion-collapse collapse\" aria-labelledby=\"headingThree\" data-bs-parent=\"#accordionExample\">\r\n");
      out.write("      <div class=\"accordion-body\">\r\n");
      out.write("        <strong>This is the third item's accordion body.</strong> It is hidden by default, until the collapse plugin adds the appropriate classes that we use to style each element. These classes control the overall appearance, as well as the showing and hiding via CSS transitions. You can modify any of this with custom CSS or overriding our default variables. It's also worth noting that just about any HTML can go within the <code>.accordion-body</code>, though the transition does limit overflow.\r\n");
      out.write("      </div>\r\n");
      out.write("    </div>\r\n");
      out.write("  </div>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</div>\r\n");
      out.write("<table>\r\n");
      out.write("	<tr>\r\n");
      out.write("		<td width=\"600\"> \r\n");
      out.write("		Total : ");
      out.print(totalRecord);
      out.write("Articles(<font color=\"red\">\r\n");
      out.write("		");
      out.print(nowPage+"/"+totalPage);
      out.write("Pages</font>)\r\n");
      out.write("		</td>\r\n");
      out.write("		\r\n");
      out.write("		\r\n");
      out.write("			\r\n");
      out.write("		\r\n");
      out.write("		<td align=\"right\">\r\n");
      out.write("\r\n");
      out.write("			  <div class=\"btn-group me-2\" role=\"group\" aria-label=\"Second group\">\r\n");
      out.write("			    <button type=\"button\" class=\"btn btn-secondary\">5</button>\r\n");
      out.write("			    <button type=\"button\" class=\"btn btn-secondary\">10</button>\r\n");
      out.write("			    <button type=\"button\" class=\"btn btn-secondary\">15</button>\r\n");
      out.write("			    <button type=\"button\" class=\"btn btn-secondary\">30</button>\r\n");
      out.write("			  </div>\r\n");
      out.write("\r\n");
      out.write("			\r\n");
      out.write("			<!-- \r\n");
      out.write("			<form name=\"npFrm\" method=\"post\">\r\n");
      out.write("				<select name=\"numPerPage\" size=\"1\" \r\n");
      out.write("				onchange=\"numPerFn(this.form.numPerPage.value)\">\r\n");
      out.write("    				<option value=\"5\">5??? ??????</option>\r\n");
      out.write("    				<option value=\"10\" selected>10??? ??????</option>\r\n");
      out.write("    				<option value=\"15\">15??? ??????</option>\r\n");
      out.write("    				<option value=\"30\">30??? ??????</option>\r\n");
      out.write("   				</select>\r\n");
      out.write("   			</form>\r\n");
      out.write("   			 -->\r\n");
      out.write("   			<script>\r\n");
      out.write("   				document.npFrm.numPerPage.value=");
      out.print(numPerPage);
      out.write(";\r\n");
      out.write("   			</script>\r\n");
      out.write("		</td>\r\n");
      out.write("	</tr>\r\n");
      out.write("</table>\r\n");
      out.write("<!-- ????????? ????????? Start -->\r\n");
      out.write("<table>\r\n");
      out.write("	<tr> \r\n");
      out.write("		<td align=\"center\" colspan=\"2\">\r\n");
      out.write("		");

				Vector<BoardBean> vlist = 
				mgr.getBoardList(keyField, keyWord, start, cnt);
				int listSize = vlist.size();//????????? ???????????? 10??? ???????????? ??????.
				if(vlist.isEmpty()){
					out.println("????????? ???????????? ????????????.");
				}else{
		
      out.write("\r\n");
      out.write("			<table cellspacing=\"0\">\r\n");
      out.write("				<tr align=\"center\" bgcolor=\"#D0D0D0\">\r\n");
      out.write("					<td width=\"100\">??? ???</td>\r\n");
      out.write("					<td width=\"250\">??? ???</td>\r\n");
      out.write("					<td width=\"100\">??? ???</td>\r\n");
      out.write("					<td width=\"150\">??? ???</td>\r\n");
      out.write("					<td width=\"100\">?????????</td>\r\n");
      out.write("				</tr>	\r\n");
      out.write("				");

						for(int i=0;i<numPerPage;i++){
							if(i==listSize) break;
							BoardBean bean = vlist.get(i);
							int num = bean.getNum();
							String subject = bean.getSubject();
							String name = bean.getName();
							String regdate = bean.getRegdate();
							int depth = bean.getDepth();
							int count = bean.getCount();
							String filename = bean.getFilename();
							//comment count
							int bcount = cmgr.getBCommentCount(num);
				
      out.write("\r\n");
      out.write("				<tr align=\"center\">\r\n");
      out.write("					<td>");
      out.print(totalRecord-start-i);
      out.write("</td>\r\n");
      out.write("					<td align=\"left\">\r\n");
      out.write("						");
for(int j=0;j<depth;j++){out.println("&nbsp;&nbsp;");}
      out.write("          \r\n");
      out.write("						<a href=\"javascript:read('");
      out.print(num);
      out.write("')\">\r\n");
      out.write("						");
      out.print(subject);
      out.write("</a>\r\n");
      out.write("						");
if(filename!=null&&!filename.equals("")){
      out.write("\r\n");
      out.write("							<img src=\"img/icon_file.gif\" align=\"middle\">\r\n");
      out.write("						");
}
      out.write("\r\n");
      out.write("						");
if(bcount>0){ 
      out.write("\r\n");
      out.write("							<font color=\"red\">(");
      out.print(bcount);
      out.write(")</font>\r\n");
      out.write("						");
}//??????????????? ?????? ?????? ?????? ??? ??????.
      out.write(" \r\n");
      out.write("					</td>\r\n");
      out.write("					<td>");
      out.print(name);
      out.write("</td>\r\n");
      out.write("					<td>");
      out.print(regdate);
      out.write("</td>\r\n");
      out.write("					<td>");
      out.print(count);
      out.write("</td>\r\n");
      out.write("				</tr>\r\n");
      out.write("				");
}//---for
      out.write("\r\n");
      out.write("			</table>	\r\n");
      out.write("		");
}//---if-else
      out.write("\r\n");
      out.write("		</td>\r\n");
      out.write("	</tr>\r\n");
      out.write("	<tr><td colspan=\"2\"><br><br></tr>\r\n");
      out.write("	<tr>\r\n");
      out.write("		<td>\r\n");
      out.write("		<!-- ????????? ??? ?????? Start -->\r\n");
      out.write("		<!-- ???????????? -->\r\n");
      out.write("		");
if(nowBlock>1){
      out.write("\r\n");
      out.write("			<a href=\"javascript:block('");
      out.print(nowBlock-1);
      out.write("')\">prev...</a>\r\n");
      out.write("		");
}
      out.write("\r\n");
      out.write("		<!-- ????????? -->\r\n");
      out.write("		");

				int pageStart = (nowBlock-1)*pagePerBlock+1;
				int pageEnd = (pageStart+pagePerBlock/*15*/)<totalPage?
										pageStart+pagePerBlock:totalPage+1;
				for(;pageStart<pageEnd;pageStart++){
		
      out.write("\r\n");
      out.write("		<a href=\"javascript:pageing('");
      out.print(pageStart);
      out.write("')\">\r\n");
      out.write("			");
if(pageStart==nowPage){
      out.write("<font color=\"blue\">");
}
      out.write("            \r\n");
      out.write("				[");
      out.print(pageStart);
      out.write("]\r\n");
      out.write("			");
if(pageStart==nowPage){
      out.write("</font>");
}
      out.write("\r\n");
      out.write("		</a>\r\n");
      out.write("		");
}//---for
      out.write("\r\n");
      out.write("		<!-- ???????????? -->\r\n");
      out.write("		");
if(totalBlock>nowBlock){
      out.write("\r\n");
      out.write("			<a href=\"javascript:block('");
      out.print(nowBlock+1);
      out.write("')\">...next</a>\r\n");
      out.write("		");
}
      out.write("\r\n");
      out.write("		<!-- ????????? ??? ?????? End -->\r\n");
      out.write("		</td>\r\n");
      out.write("		<td align=\"right\">\r\n");
      out.write("			<a style=\"color:white;\" href=\"post.jsp\"><button type=\"button\" class=\"btn btn-dark\">?????????</button></a>\r\n");
      out.write("			<a href=\"post.jsp\"><button type=\"button\" class=\"btn btn-light\">????????????</button></a>\r\n");
      out.write("		</td>\r\n");
      out.write("	</tr>\r\n");
      out.write("</table>\r\n");
      out.write("<!-- ????????? ????????? End -->\r\n");
      out.write("<hr width=\"750\">\r\n");
      out.write("<form name=\"searchFrm\">\r\n");
      out.write("	<table  width=\"600\" cellpadding=\"4\" cellspacing=\"0\">\r\n");
      out.write(" 		<tr>\r\n");
      out.write("  			<td align=\"center\" valign=\"bottom\">\r\n");
      out.write("			<select name=\"keyField\" size=\"1\">\r\n");
      out.write("				<option value=\"name\">??? ???</option>\r\n");
      out.write("				<option value=\"subject\">??? ???</option>\r\n");
      out.write("				<option value=\"content\">??? ???</option>\r\n");
      out.write("			</select>\r\n");
      out.write("			<input name=\"keyWord\" size=\"16\">\r\n");
      out.write("			<input type=\"hidden\" name=\"nowPage\" value=\"1\">\r\n");
      out.write("			<input type=\"button\" value=\"??????\" onclick=\"check()\">\r\n");
      out.write("  			</td>\r\n");
      out.write(" 		</tr>\r\n");
      out.write("	</table>\r\n");
      out.write("</form>\r\n");
      out.write("<form name=\"listFrm\" method=\"post\"> \r\n");
      out.write("	<input type=\"hidden\" name=\"reload\" value=\"true\">\r\n");
      out.write("	<input type=\"hidden\" name=\"nowPage\" value=\"1\">\r\n");
      out.write("</form>\r\n");
      out.write("<form name=\"readFrm\">\r\n");
      out.write("	<input type=\"hidden\" name=\"nowPage\" value=\"");
      out.print(nowPage);
      out.write("\">\r\n");
      out.write("	<input type=\"hidden\" name=\"numPerPage\" value=\"");
      out.print(numPerPage);
      out.write("\">\r\n");
      out.write("	<input type=\"hidden\" name=\"keyField\" value=\"");
      out.print(keyField);
      out.write("\">\r\n");
      out.write("	<input type=\"hidden\" name=\"keyWord\" value=\"");
      out.print(keyWord);
      out.write("\">\r\n");
      out.write("	<input type=\"hidden\" name=\"num\">\r\n");
      out.write("</form>\r\n");
      out.write("</div>\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
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
