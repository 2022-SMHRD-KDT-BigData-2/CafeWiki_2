package Pojo;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.MemberVO;

public class CustomerManageCon implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		HttpSession session = request.getSession();
		MemberVO vo = (MemberVO) session.getAttribute("vo");
		String o_num = vo.getO_num();
		// 현재 로그인한 사업자의 사업자 번호를 가지고 온다
		
		return null;
	}

}

