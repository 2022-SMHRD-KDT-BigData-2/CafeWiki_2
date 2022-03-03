package Model;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class CouponDAO {

	
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
	
	public List<CouponVO> selectCoupon(String id) {

		SqlSession session = sqlSessionFactory.openSession();

		List<CouponVO> list = session.selectList("selectCoupon", id);

		session.close();

		return list;

	}
	
	public CouponVO scan(CouponVO svo) {
		SqlSession session = sqlSessionFactory.openSession();

		CouponVO vo = session.selectOne("barcodeScan2", svo);

		session.close();

		return vo;
		
	}

	public CafeVO selectcouponname(String o_num) {
		SqlSession session = sqlSessionFactory.openSession();

		CafeVO vo = session.selectOne("selectcouponname", o_num);

		session.close();

		return vo;
		
	}

	public int update(CouponVO vo) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int cnt = session.insert("updateCoupon", vo);
		session.close();
		return cnt;
	}// 쿠폰 적립 or 사용

	
	public List<CouponVO> customerList(String o_num) {
		SqlSession session = sqlSessionFactory.openSession();

		List<CouponVO> list = session.selectList("customerList", o_num);

		session.close();

		return list;
		
	}

	public int add(CouponVO vo3) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int cnt = session.insert("addCoupon", vo3);
		session.close();
		return cnt;
	}
}
