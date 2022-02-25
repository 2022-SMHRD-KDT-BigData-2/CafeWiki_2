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

@WebServlet("/checkCon")
public class checkCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");

		String id = request.getParameter("id");

		MemberDAO dao = new MemberDAO();
		MemberVO vo = dao.idCheck(id);

		// 응답
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();

		// vo가 비어있으면 out.print(true); -> 사용가능한 이메일
		// vo가 비어있지 않으면 out.print(false); -> 중복된 이메일
		out.print(vo == null);
	}

}
