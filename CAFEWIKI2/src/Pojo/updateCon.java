package Pojo;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.MemberDAO;
import Model.MemberVO;

public class updateCon implements Command {
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		HttpSession session = request.getSession();
		MemberVO uvo = (MemberVO) session.getAttribute("vo");

		String id = uvo.getId();
		String pw = request.getParameter("pw");
		String tel = request.getParameter("tel");
		String email = request.getParameter("email");

		MemberVO vo = new MemberVO(id, pw, tel, email);

		MemberDAO dao = new MemberDAO();
		int cnt = dao.update(vo);

		if (cnt > 0) {
			session.setAttribute("vo", uvo);
			return "redirect:UserMain.jsp";
		} else
			return "redirect:Update.jsp";
	}
}
