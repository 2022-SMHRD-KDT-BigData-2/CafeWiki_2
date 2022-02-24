package Pojo;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.BoardDAO;
import Model.BoardVO;

public class goBoardMainCon implements Command{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		BoardDAO dao = new BoardDAO();
		List<BoardVO> list = dao.selectBoard(); 
		 
		request.setAttribute("list", list);
		
		return "boardMain.jsp";
	}

}
