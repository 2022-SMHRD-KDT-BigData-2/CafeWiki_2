package FrontController;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.BoardDAO;
import Model.BoardVO;

@WebServlet("/goViewBoard")
public class goViewBoard extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		int num = Integer.parseInt(request.getParameter("num")) ;
		
		
		BoardDAO dao = new BoardDAO();
		BoardVO bvo = dao.viewBoard(num);
		
		 
		request.setAttribute("bvo", bvo);
		
		 
		RequestDispatcher rd = request.getRequestDispatcher("viewBoard.jsp");
		rd.forward(request, response);
		
		
	}

}
