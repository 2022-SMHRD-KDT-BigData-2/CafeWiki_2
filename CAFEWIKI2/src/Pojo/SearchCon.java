package Pojo;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.CafeDAO;
import Model.CafeVO;

public class SearchCon implements Command{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		String store = request.getParameter("store");
		
		CafeDAO dao = new CafeDAO();
		List<CafeVO> clist = dao.selectCafe(store);
		
		HttpSession session = request.getSession();
		request.setAttribute("clist", clist);
		
		return "redirect:goSearchMain.jsp";
	}
	
}
