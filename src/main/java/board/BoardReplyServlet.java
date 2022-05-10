package board;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/board/boardReply")
public class BoardReplyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BoardMgr mgr = new BoardMgr();
		int ref = Integer.parseInt(request.getParameter("ref"));
		int pos = Integer.parseInt(request.getParameter("pos"));
		
		mgr.replyUpBoard(ref, pos);
		mgr.replyBoard(request);
		
		
		response.sendRedirect("boardList.jsp");
	}

}
