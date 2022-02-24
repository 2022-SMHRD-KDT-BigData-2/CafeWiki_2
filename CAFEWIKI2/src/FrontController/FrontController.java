package FrontController;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Pojo.cafeCon;
import Pojo.goBoardMainCon;
import Pojo.Command;
import Pojo.joinCon;
import Pojo.loginCon;
import Pojo.writeCon;

@WebServlet("*.do")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("EUC-KR");
		String requsetURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String command = requsetURI.substring(contextPath.length());

		String nextPage = null;
		Command com = null;

		if (command.equals("/login.do")) {
			com = new loginCon();

		} else if (command.equals("/join.do")) {
			com = new joinCon();
		} else if (command.equals("/cafe.do")) {
			com = new cafeCon();
		} else if (command.equals("/CafeMain.do")) {
			com = new cafeCon();
		} else if(command.equals("/write.do")) {
			com = new writeCon();
		} else if(command.equals("/write.do")) {
			com = new goBoardMainCon();
		} 

		if (com != null)
			nextPage = com.execute(request, response);
		// ========================================================================================
		// 페이지이동 처리
		if (nextPage != null) {
			if (nextPage.contains("redirect")) {
				response.sendRedirect(nextPage.split(":")[1]);
			} else {
				RequestDispatcher rd = request.getRequestDispatcher(nextPage);
				rd.forward(request, response);
			}
		}
	}

}
