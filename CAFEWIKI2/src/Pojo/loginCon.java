package Pojo;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.CafeDAO;
import Model.CafeVO;
import Model.CouponDAO;
import Model.CouponVO;
import Model.MemberDAO;
import Model.MemberVO;

public class loginCon implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response) {

		String id = request.getParameter("id");
		String pw = request.getParameter("pw");

		MemberVO vo = new MemberVO(id, pw);
		MemberDAO dao = new MemberDAO();
		MemberVO uservo = dao.login(vo);

		CouponDAO dao2 = new CouponDAO();
		List<CouponVO> slist = dao2.selectCoupon(id);		

		if (uservo != null) {
			HttpSession session = request.getSession();
			session.setAttribute("vo", uservo);
			session.setAttribute("slist", slist);
			System.out.println(slist);
		} else {
			System.out.println("로그인실패");
		}

		if (uservo.getO_num()==null) {
			return "redirect:UserMain.jsp";
		} else {
			return "redirect:cafe.do";
		}

	}
}
