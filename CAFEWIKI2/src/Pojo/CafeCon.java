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
		
		// DAO �޼��� ��� -> ��� �Խñ� ��������
		CafeDAO dao1 = new CafeDAO();
		List<BoardVO> Blist = dao1.selectBoard();

		CafeDAO dao2 = new CafeDAO();
		CafeVO uvo = (CafeVO)dao2.selectCafe(o_num);

		// request scope�� list ���
		request.setAttribute("Blist", Blist);
		request.setAttribute("uvo", uvo);

		return "UserMain.jsp";

	}

}
