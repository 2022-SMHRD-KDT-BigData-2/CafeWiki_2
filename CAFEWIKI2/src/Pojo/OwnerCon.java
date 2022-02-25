package Pojo;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import Model.BoardDAO;
import Model.BoardVO;
import Model.CafeDAO;
import Model.CafeVO;
import Model.MemberVO;

public class OwnerCon implements Command {
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		HttpSession session = request.getSession();
		MemberVO vo = new MemberVO();
		MemberVO mvo = (MemberVO) session.getAttribute("vo");
		CafeVO vo2 = new CafeVO();
		BoardVO vo3 = new BoardVO();

		try {
			request.setCharacterEncoding("EUC-KR");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}

		CafeDAO cdao = new CafeDAO();

		List<CafeVO> cvo = (List<CafeVO>) cdao.selectCafe(mvo.getO_num());
		List<BoardVO> bvo = (List<BoardVO>) cdao.selectBoard(mvo.getO_num());

		// request scope¿¡ list ´ã±â
		request.setAttribute("cvo", cvo);
		request.setAttribute("bvo", bvo);

		return "OwnerMain.jsp";

	}

}
