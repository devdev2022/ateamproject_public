package board;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/board/jspboard/insertCmtLikes")
public class InsertCmtLikesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		HttpSession session = request.getSession();
		String bValue = (String)session.getAttribute("bValue");
		session.setAttribute("bValue", bValue);
		String loginId = (String)session.getAttribute("idKey");
		if(loginId == null) {
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('로그인이 필요합니다.')");
			out.println("javascript:location.href='../jspmember/login.jsp'");
			out.println("</script>");
			return;
		}
		CmtLikesMgr cLMgr = new CmtLikesMgr();
		CmtLikesBean cLBean = new CmtLikesBean();
		cLBean.setId(loginId);
		int num = Integer.parseInt(request.getParameter("num"));
		int cnum = Integer.parseInt(request.getParameter("cnum"));
		System.out.println(cnum);
		
		cLBean.setNum(num);
		cLBean.setCnum(cnum);
		
		cLMgr.insertCmtLikes(cLBean);
		response.sendRedirect("boardRead.jsp?num=" + request.getParameter("num"));
	}

}
