package exercise.model;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import exercise.entity.ChallengeVO;
import exercise.entity.CommunityVO;
import exercise.entity.OutdoorVO;
import exercise.entity.ParkVO;
import exercise.entity.RunningVO;

public class OutdoorDAO {
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
	
	
	public List<RunningVO> selectRun() {
		SqlSession session = sqlSessionFactory.openSession();
		List<RunningVO> list = session.selectList("selectRun");
		session.close();
		return list;
	}
	
	public List<OutdoorVO> selectOutdoor() {
		SqlSession session = sqlSessionFactory.openSession();
		List<OutdoorVO> outdoorList = session.selectList("selectOutdoor");
		session.close();
		return outdoorList;
	}
	
	public List<ParkVO> selectPark() {
		SqlSession session = sqlSessionFactory.openSession();
		List<ParkVO> parkList = session.selectList("selectPark");
		session.close();
		return parkList;
	}

}
