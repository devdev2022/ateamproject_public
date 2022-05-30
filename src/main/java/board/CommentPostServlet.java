package board;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/board/jspboard/commentPost")
public class CommentPostServlet extends HttpServlet {
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
		
		CommentMgr cMgr = new CommentMgr();
		CommentBean cBean = new CommentBean();
		cBean.setNum(Integer.parseInt(request.getParameter("num")));
		cBean.setId(request.getParameter("loginId"));
		cBean.setComment(request.getParameter("cComment"));
		cMgr.commentInsert(cBean);
		response.sendRedirect("boardRead.jsp?num=" + request.getParameter("num"));
	}

}
