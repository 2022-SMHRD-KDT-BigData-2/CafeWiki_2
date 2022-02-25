package Pojo;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import Model.BoardDAO;
import Model.BoardVO;

public class writeCon implements Command {
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		String savePath = request.getServletContext().getRealPath("img");

		int maxSize = 1024 * 1024 * 5; 

		String encoding = "euc-kr";

		MultipartRequest multi;

		try {
			multi = new MultipartRequest(request, savePath, maxSize, encoding);
			new DefaultFileRenamePolicy();
			String b_title = multi.getParameter("b_title");
			
			System.out.println(b_title);
			String o_num = multi.getParameter("o_num");
			System.out.println(o_num);
			String b_cont = multi.getParameter("b_cont");
			System.out.println(b_cont);
			String b_file = multi.getFilesystemName("b_file");
			System.out.println(b_file);
			if (b_file == null) {
				b_file = "";
			}

			BoardVO vo = new BoardVO(b_title, b_cont, b_file, o_num);

			BoardDAO dao = new BoardDAO();
			int cnt = dao.writeBoard(vo);

			if (cnt > 0) {
				System.out.println("게시글 작성 성공");
			} else {
				System.out.println("게시글 작성 실패");
			}

		} catch (IOException e) {

			e.printStackTrace();
		}
		
		return "redirect:cafe.do";

	}

}

