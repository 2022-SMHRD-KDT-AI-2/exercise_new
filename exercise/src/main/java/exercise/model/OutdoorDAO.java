package exercise.model;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import exercise.entity.ChallengeVO;
import exercise.entity.CommunityVO;
import exercise.entity.RunningVO;

public class OutdoorDAO {
	private static SqlSessionFactory sqlSessionFactory;
	static {
		try {
			String resource = "exercise/model/config.xml";
			InputStream inputStream = Resources.getResourceAsStream(resource);
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);	
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	public List<RunningVO> selectRun() {
		SqlSession session = sqlSessionFactory.openSession();
		List<RunningVO> list = session.selectList("selectRun");
		session.close();
		return list;
	}
}
