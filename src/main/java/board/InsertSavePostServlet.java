package board;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/board/insertSavePost")
public class InsertSavePostServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int num = Integer.parseInt(request.getParameter("num"));
		String id = request.getParameter("loginId");
		SavePostMgr sMgr = new SavePostMgr();
		SavePostBean sBean = new SavePostBean();
		sBean.setId(id);
		sBean.setNum(num);
		sMgr.insertSavePost(sBean);
		response.sendRedirect("boardRead.jsp?num=" + num);
	}

}
