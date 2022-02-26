package Pojo;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CouponUpdateCon implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		
		
		
		return "redirect:cafe.do";
	}

}