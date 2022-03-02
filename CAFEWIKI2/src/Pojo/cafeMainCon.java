package Pojo;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
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
		try {
			request.setCharacterEncoding("EUC-KR");
		} catch (UnsupportedEncodingException e2) {
			e2.printStackTrace();
		}
		String o_num = (String) request.getParameter("o_num");
		String store = (String) request.getParameter("store");

		CafeDAO cdao = new CafeDAO();
		
		if(o_num != null) {
			CafeVO cvo = (CafeVO) cdao.searchOneCafe(o_num);
			request.setAttribute("cvo", cvo);
		}else {
			CafeVO cvo = (CafeVO) cdao.selectOneCafe(store);
			o_num = cvo.getO_num();
			request.setAttribute("cvo", cvo);
		}
		
		List<BoardVO> bvo = (List<BoardVO>) cdao.selectBoard(o_num);

		// request scope¿¡ list ´ã±â
		request.setAttribute("bvo", bvo);

		
		return "CafeMain.jsp";
	}

}
