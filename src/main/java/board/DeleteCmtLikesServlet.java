package board;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/board/jspboard/deleteCmtLikes")
public class DeleteCmtLikesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		HttpSession session = request.getSession();
		String loginId = (String)session.getAttribute("idKey");
		if(loginId == null) {
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('로그인이 필요합니다.')");
			out.println("javascript:location.href='../jspmember/login.jsp'");
			out.println("</script>");
			return;
		}
		int num = Integer.parseInt(request.getParameter("num"));
		int cnum = Integer.parseInt(request.getParameter("cnum"));
		System.out.println(cnum);
		CmtLikesMgr cLMgr = new CmtLikesMgr();
		cLMgr.deleteCmtLikes(num, cnum, loginId);
		response.sendRedirect("boardRead.jsp?num=" + num);
	}

}
