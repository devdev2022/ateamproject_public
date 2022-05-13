package board;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/board/jspboard/insertLikes")
public class InsertLikesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String loginId = request.getParameter("loginId");
		LikesMgr lMgr = new LikesMgr();
		LikesBean lBean = new LikesBean();
		lBean.setId(loginId);
		lBean.setNum(Integer.parseInt(request.getParameter("num")));
		lMgr.insertLikes(lBean);
		response.sendRedirect("boardRead.jsp?num=" + request.getParameter("num"));
	}

}
