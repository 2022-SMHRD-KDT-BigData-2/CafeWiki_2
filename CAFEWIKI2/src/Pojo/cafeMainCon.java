package Pojo;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.BoardVO;
import Model.CafeDAO;
import Model.CafeVO;
import Model.MemberVO;

public class cafeMainCon implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		MemberVO mvo = (MemberVO) session.getAttribute("vo");
		request.getAttribute("");
		
		try {
			request.setCharacterEncoding("EUC-KR");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}

		CafeDAO cdao = new CafeDAO();

		List<CafeVO> namevo = (List<CafeVO>) cdao.searchCafeName(store);
		List<CafeVO> typevo = (List<CafeVO>) cdao.searchCafeType(store);
		List<BoardVO> bvo = (List<BoardVO>) cdao.selectBoard(o_num);

		// request scope¿¡ list ´ã±â
		request.setAttribute("namevo", namevo);
		request.setAttribute("typevo", typevo);
		request.setAttribute("bvo", bvo);

		
		return "CafeMain.jsp";
	}

}
