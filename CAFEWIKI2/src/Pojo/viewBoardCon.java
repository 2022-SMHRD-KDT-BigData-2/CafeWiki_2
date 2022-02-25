package Pojo;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.BoardDAO;
import Model.BoardVO;
import Model.CafeVO;

public class viewBoardCon implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		int b_num = Integer.parseInt(request.getParameter("b_num"));

		BoardDAO dao = new BoardDAO();
		BoardVO bvo = dao.viewBoard(b_num);
		CafeVO cvo = dao.viewBoard2(b_num);
		request.setAttribute("bvo", bvo);
		request.setAttribute("cvo", cvo);
		
		return "viewBoard.jsp";

	}
}
