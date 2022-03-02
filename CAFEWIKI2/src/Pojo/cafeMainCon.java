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
		
		String o_num = (String) request.getParameter("o_num");
		
		System.out.println(o_num);
		
		try {
			request.setCharacterEncoding("EUC-KR");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}

		CafeDAO cdao = new CafeDAO();

		CafeVO cvo = (CafeVO) cdao.searchOneCafe(o_num);
		List<BoardVO> bvo = (List<BoardVO>) cdao.selectBoard(o_num);

		// request scope¿¡ list ´ã±â
		request.setAttribute("cvo", cvo);
		request.setAttribute("bvo", bvo);

		
		return "CafeMain.jsp";
	}

}
