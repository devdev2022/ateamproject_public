package board;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/board/jspboard/deleteComment")
public class CommentDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		CommentMgr cMgr = new CommentMgr();
		HttpSession session = request.getSession();
		String bValue = (String)session.getAttribute("bValue");
		session.setAttribute("bValue", bValue);
		int cnum = Integer.parseInt(request.getParameter("cnum"));
		int num = Integer.parseInt(request.getParameter("num"));
		System.out.println(cnum);
		cMgr.commentDelete(cnum);
		
		response.sendRedirect("boardRead.jsp?num=" + num);
	}

}
