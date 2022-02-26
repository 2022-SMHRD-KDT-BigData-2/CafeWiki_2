package Model;

import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.apache.ibatis.session.defaults.DefaultSqlSessionFactory;

public class MemberDAO {
	private static SqlSessionFactory sqlSessionFactory;
	static {
		try {
			String resource = "Mapper/config.xml";
			InputStream inputStream = Resources.getResourceAsStream(resource);
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
		} catch (Exception e) {
			e.printStackTrace();
		}

	} // ==========================================================

	public int join(MemberVO vo) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int cnt = session.insert("joinService", vo);
		session.close();
		return cnt;
	}// 회원가입

	public MemberVO login(MemberVO vo) {
		SqlSession session = sqlSessionFactory.openSession();
		MemberVO uservo = session.selectOne("loginService", vo);
		session.close();

		return uservo;
	}// 로그인

	public MemberVO idCheck(String id) {
		SqlSession session = sqlSessionFactory.openSession();
		MemberVO vo = session.selectOne("idCheck", id);
		session.close();

		return vo;
	}// 아이디 중복 확인

	public MemberVO o_numCheck(String o_num) {
		SqlSession session = sqlSessionFactory.openSession();
		MemberVO vo = session.selectOne("o_numCheck", o_num);
		session.close();

		return vo;
	}// 아이디 중복 확인
}
