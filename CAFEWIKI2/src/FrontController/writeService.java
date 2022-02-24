package FrontController;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import Model.BoardDAO;
import Model.BoardVO;

@WebServlet("/writeService")
public class writeService extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//1. 파라미터 수집 
		
		// 1) 저장할 폴더의 경로 
		String savePath = request.getServletContext().getRealPath("img");
		
		// 2) 최대 크기 
		int maxSize = 1024 * 1024 * 5; // 5mb(5메가바이트)
		
		// 3) 인코딩타입 
		String encoding = "euc-kr"; 
		
		MultipartRequest multi = new MultipartRequest(request, 
				savePath,
				maxSize,
				encoding);
				new DefaultFileRenamePolicy(); // 중복 방지  
				
		// request.getParameter("name) 와 같음
		String title = multi.getParameter("title");
		String writer = multi.getParameter("writer");
		String content = multi.getParameter("content");
		
		//파일이름 가져오기 
		// multi.getFilesystemName("name");
		String fileName = multi.getFilesystemName("file"); 
		
		BoardVO vo = new BoardVO(maxSize, title, writer, content, fileName, maxSize);
		
		//DAO 메서드 사용
		BoardDAO dao = new BoardDAO();
		int cnt = dao.writeBoard(vo);
		
		if(cnt>0) {
			// 성공 
			System.out.println("게시글 작성 성공");
			response.sendRedirect("goBoardMain");
		}else {
			// 실패 
			response.sendRedirect("writerBoard.jsp");
		}
	}

}
