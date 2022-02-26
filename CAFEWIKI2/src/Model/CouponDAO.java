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

	
}
