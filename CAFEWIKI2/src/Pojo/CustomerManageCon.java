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
		// ���� �α����� ������� ����� ��ȣ�� ������ �´�
		
		return null;
	}

}

