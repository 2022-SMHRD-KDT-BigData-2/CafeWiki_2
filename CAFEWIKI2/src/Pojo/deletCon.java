package Pojo;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.MemberDAO;
import Model.MemberVO;

public class deletCon implements Command {
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		HttpSession session = request.getSession();
		MemberVO vo = (MemberVO)session.getAttribute("vo");
		MemberDAO dao = new MemberDAO();
		int cnt = dao.delete(vo.getId());
	
		if (cnt > 0) {
			return "redirect:login.jsp";
		} else {
			return "redirect:update.jsp";
		}
	
	
	}
}