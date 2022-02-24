package Pojo;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.BoardDAO;
import Model.BoardVO;
import Model.MemberVO;

public class goBoardMainCon implements Command{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		HttpSession session = request.getSession();
		MemberVO vo = (MemberVO)session.getAttribute("vo");
		
		BoardDAO dao = new BoardDAO();
		List<BoardVO> list = dao.selectBoard(vo.getO_num()); 
		 
		request.setAttribute("list", list);
		
		return "boardMain.jsp";
	}

}
