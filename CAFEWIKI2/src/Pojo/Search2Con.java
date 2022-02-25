package Pojo;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.CafeDAO;
import Model.CafeVO;

public class Search2Con implements Command{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		String type = request.getParameter("type");
		
		CafeDAO dao = new CafeDAO();
		List<CafeVO> clist = dao.searchCafeType(type);
		
		request.setAttribute("clist", clist);

		return "SearchMain.jsp";
	}

}
