package exercise.model;

import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import exercise.entity.ChallengeVO;
import exercise.entity.CommunityVO;

public class ChallengeDAO {
	private static SqlSessionFactory sqlSessionFactory;
	static {
		try {
			String resource = "mapper/config.xml";
			InputStream inputStream = Resources.getResourceAsStream(resource);
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);	
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	public ChallengeVO getById(String memId) {
		SqlSession session=sqlSessionFactory.openSession();
		ChallengeVO vo = session.selectOne("getById", memId);
		session.close();
		return vo;
	}
}
