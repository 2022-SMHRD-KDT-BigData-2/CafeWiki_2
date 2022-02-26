package Pojo;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.CafeVO;
import Model.CouponDAO;
import Model.CouponVO;


public class CouponCon implements Command{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		String id = request.getParameter("id");
		
		CouponDAO dao = new CouponDAO();
		List<CouponVO> slist = dao.selectCoupon(id);	
		List<CafeVO> clist = new ArrayList<CafeVO>();
		
		for(int i=0;i<slist.size();i++) {
			String o_num = slist.get(i).getO_num();
			clist.add(dao.selectcouponname(o_num));
		}
		HttpSession session = request.getSession();
		session.setAttribute("clist", clist);
		session.setAttribute("slist", slist);
		
		return "redirect:MyCoupon.jsp";
	}

}
