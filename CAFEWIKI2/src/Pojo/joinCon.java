package Pojo;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.MemberDAO;
import Model.MemberVO;

public class joinCon implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response) {

		int cnt = 0;
		String id = request.getParameter("id");
		String o_num = request.getParameter("o_num");
		String name = request.getParameter("name");
		String pw = request.getParameter("pw");
		String tel = request.getParameter("tel");
		String email = request.getParameter("email");
		String birth = request.getParameter("birth");
		String gender = request.getParameter("gender");


		MemberVO vo = new MemberVO(id, o_num, pw, name, tel, email, birth, gender);	
		MemberDAO dao = new MemberDAO();
		
		cnt = dao.join(vo);

		
		
		if (cnt > 0) {
			return "redirect:login.jsp";
		} else {
			return "redirect:join.jsp";
		}
	}
}