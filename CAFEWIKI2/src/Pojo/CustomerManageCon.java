package Pojo;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.BoardVO;
import Model.CouponDAO;
import Model.CouponVO;
import Model.MemberVO;

public class CustomerManageCon implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		HttpSession session = request.getSession();
		MemberVO vo = (MemberVO) session.getAttribute("vo");
		// 현재 로그인중인 사업자 번호 가져오기
		
		// 사업자 번호가 o_num이고
		CouponDAO cdao = new CouponDAO();
		List<CouponVO> cusvo = (List<CouponVO>)cdao.customerList(vo.getO_num());
		
		request.setAttribute("cusvo", cusvo);

		return "CustomerManage.jsp";
	}

}
