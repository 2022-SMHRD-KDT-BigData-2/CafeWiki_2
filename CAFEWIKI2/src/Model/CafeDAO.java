package Model;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import Model.BoardVO;
import Model.MemberVO;

public class CafeDAO {

	private static SqlSessionFactory sqlSessionFactory;

	static {
		try {
			String resource = "Mapper/config.xml";
			InputStream inputStream = Resources.getResourceAsStream(resource);
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	public List<BoardVO> selectBoard(String o_num) {

		SqlSession session = sqlSessionFactory.openSession();

		List<BoardVO> list = session.selectList("selectBoard", o_num);

		session.close();

		return list;

	}
	


	public List<CafeVO> selectCafe(String o_num) {

		SqlSession session = sqlSessionFactory.openSession();

		List<CafeVO> list = session.selectList("selectCafe", o_num);

		session.close();

		return list;

	}

	public List<CafeVO> searchCafeName(String store) {

		SqlSession session = sqlSessionFactory.openSession();

		List<CafeVO> list = session.selectList("searchCafeName", store);

		session.close();

		return list;

	}
	
	public List<CafeVO> searchCafeType(String type) {

		SqlSession session = sqlSessionFactory.openSession();

		List<CafeVO> list = session.selectList("searchCafeType", type);

		session.close();

		return list;

	}
	
	public CafeVO searchOneCafe(String o_num) {

		SqlSession session = sqlSessionFactory.openSession();

		CafeVO cvo = session.selectOne("searchOneCafe", o_num);

		session.close();

		return cvo;

	}
	
	public CafeVO selectOneCafe(String store) {

		SqlSession session = sqlSessionFactory.openSession();

		CafeVO cvo = session.selectOne("selectOneCafe", store);

		session.close();

		return cvo;

	}
	
	public List<CafeVO> CafeRank() {

		SqlSession session = sqlSessionFactory.openSession();

		List<CafeVO> list = session.selectList("CafeRank");

		session.close();

		return list;

	}

}
