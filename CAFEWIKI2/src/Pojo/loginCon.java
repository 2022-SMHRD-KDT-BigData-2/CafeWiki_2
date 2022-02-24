package Pojo;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.MemberDAO;
import Model.MemberVO;

public class loginCon implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response) {

		String id = request.getParameter("id");
		String pw = request.getParameter("pw");

		MemberVO vo = new MemberVO(id, pw);
		MemberDAO dao = new MemberDAO();
		MemberVO uservo = dao.login(vo);
		
		
		if (uservo != null) {
			HttpSession session = request.getSession();
			session.setAttribute("vo", uservo);
		} else {
			System.out.println("로그인실패");
		}
		
		System.out.println(uservo.getO_num());
		
		if (uservo.getO_num().equals("0")) {

			return "redirect:main.jsp";
		} else {
			return "redirect:OwnerMain.jsp";
		}
	

	}
}
