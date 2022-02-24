package Model;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class BoardDAO {


	private static SqlSessionFactory sqlSessionFactory;

	
	static {

		try {
			String resource = "Mapper/config.xml";
			InputStream inputStream = Resources.getResourceAsStream(resource);
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
		} catch (Exception e) {

		}

	}
	// =====================================================
	
	public int writeBoard(BoardVO vo) { 
		
		SqlSession session = sqlSessionFactory.openSession(true); 
		
		int cnt = session.insert("writeBoard", vo);

		session.close();
		
		return cnt; 
		
	}
	
	public List<BoardVO> selectBoard(){
		
		SqlSession session = sqlSessionFactory.openSession();
		
		List<BoardVO> list = session.selectList("selectBoard");
		
		session.close();
		return list;
	}
	
	public BoardVO viewBoard(int b_num) { 
		
		SqlSession session = sqlSessionFactory.openSession();
		
		BoardVO vo = session.selectOne("viewBoard", b_num);
		
		session.close();
		
		return vo;
	} 

}
