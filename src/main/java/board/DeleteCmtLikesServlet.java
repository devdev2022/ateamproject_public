package board;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/board/jspboard/deleteCmtLikes")
public class DeleteCmtLikesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String loginId = request.getParameter("loginId");
		int num = Integer.parseInt(request.getParameter("num"));
		int cnum = Integer.parseInt(request.getParameter("cnum"));
		System.out.println(cnum);
		CmtLikesMgr cLMgr = new CmtLikesMgr();
		cLMgr.deleteCmtLikes(num, cnum, loginId);
		response.sendRedirect("boardRead.jsp?num=" + num);
	}

}
