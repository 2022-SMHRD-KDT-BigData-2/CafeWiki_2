package Pojo;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.MemberDAO;
import Model.MemberVO;

public class pwResetCon implements Command {
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		HttpSession session = request.getSession();
		MemberVO uvo = (MemberVO) session.getAttribute("vo");

		String id = uvo.getId();
		String pw = request.getParameter("pw");

		MemberVO vo = new MemberVO(id, pw);

		MemberDAO dao = new MemberDAO();
		int cnt = dao.pwreset(vo);

		if (cnt > 0) {
			session.setAttribute("vo", vo);
			return "redirect:login.jsp";
		} else
			return "redirect:pwReset.jsp";
	}
}
