package board;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/board/jspboard/insertCmtLikes")
public class InsertCmtLikesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String loginId = request.getParameter("loginId");
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
