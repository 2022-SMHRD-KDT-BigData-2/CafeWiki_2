package Pojo;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.BoardVO;
import Model.CafeDAO;
import Model.CafeVO;

public class CafeCon implements Command {
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		try {
			request.setCharacterEncoding("EUC-KR");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		
		String o_num = request.getParameter("o_num");
		
		// DAO 메서드 사용 -> 모든 게시글 가져오기
		CafeDAO dao1 = new CafeDAO();
		List<BoardVO> Blist = dao1.selectBoard();

		CafeVO vo = new CafeVO(o_num);
		CafeDAO dao2 = new CafeDAO();
		CafeVO uvo = (CafeVO) dao2.selectCafe(vo);

		// request scope에 list 담기
		request.setAttribute("Blist", Blist);
		request.setAttribute("uvo", uvo);

		return "UserMain.jsp";

	}

}
