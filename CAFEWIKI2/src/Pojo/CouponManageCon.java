package Pojo;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.CouponDAO;
import Model.CouponVO;
import Model.MemberDAO;
import Model.MemberVO;

public class CouponManageCon implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		MemberVO vo = (MemberVO) session.getAttribute("vo");
		String o_num = vo.getO_num();
		// 현재 로그인한 사업자의 사업자 번호를 가지고 온다
		
		int u_num = Integer.parseInt(request.getParameter("u_num"));
		// 바코드스캔 페이지에서 입력한 u_num을 받아 변수에 저장
		
		MemberDAO dao = new MemberDAO();
		MemberVO vo2 = dao.scan(u_num);
		String id = vo2.getId();
		// vo2 ==>  vo2.getID 회원번호가 u_num인 사람의 아이디를 가져온다.

		CouponDAO sdao = new CouponDAO();
		CouponVO vo3 = new CouponVO(id, o_num);
		CouponVO svo = sdao.scan(vo3);
		// svo2에 id가 id, 사업자번호가 o_num인 사람을 select해서 저장!

		request.setAttribute("svo", svo);

		return "CouponManage.jsp";
	}

}
