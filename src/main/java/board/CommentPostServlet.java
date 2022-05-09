package board;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/board/commentPost")
public class CommentPostServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		CommentMgr cMgr = new CommentMgr();
		CommentBean cBean = new CommentBean();
		cBean.setNum(Integer.parseInt(request.getParameter("num")));
		cBean.setId(request.getParameter("cid"));
		cBean.setComment(request.getParameter("cComment"));
		cMgr.commentInsert(cBean);
		response.sendRedirect("boardRead.jsp?num=" + request.getParameter("num"));
	}

}
