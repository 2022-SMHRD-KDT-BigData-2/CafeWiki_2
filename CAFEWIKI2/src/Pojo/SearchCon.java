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
		
		
		String type = request.getParameter("type");
		String store = request.getParameter("store");
		CafeDAO dao = new CafeDAO();
		List<CafeVO> clist = null;
		if(type != null) {
			clist = dao.searchCafeType(type);		
		}else {
			clist = dao.searchCafeName(store);	
		}
				
		request.setAttribute("clist", clist);

		return "SearchMain.jsp";
	}
	
}
