package Pojo;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.MemberDAO;
import Model.MemberVO;

@WebServlet("/checkCon2")
public class checkCon2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setCharacterEncoding("UTF-8");

		String o_num = request.getParameter("o_num");

		MemberDAO dao = new MemberDAO();
		MemberVO vo = dao.idCheck(o_num);

		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();

		out.print(vo == null);
	}

}