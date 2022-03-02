package Pojo;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.MemberDAO;
import Model.MemberVO;

public class pwsearchCon implements Command {
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		String id = request.getParameter("id");
		String email = request.getParameter("email");
		String tel = request.getParameter("tel");
		MemberVO vo = new MemberVO(id, tel, email);
		
		MemberDAO dao = new MemberDAO();
		MemberVO uservo = dao.pwsearch(vo);
		
		if (uservo != null) {
			HttpSession session = request.getSession();
			session.setAttribute("vo", uservo);
			return  "redirect:pwReset.jsp";
		} else {
			return  "redirect:pwSearch.jsp";
		}
		
		
		
	}
}
