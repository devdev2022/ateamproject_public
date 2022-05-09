package board;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/board/deleteLikes")
public class DeleteLikesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String loginId = request.getParameter("loginId");
		int num = Integer.parseInt(request.getParameter("num"));
		LikesMgr lMgr = new LikesMgr();
		lMgr.deleteLikes(num, loginId);
		response.sendRedirect("boardRead.jsp?num=" + num);
	}

}
