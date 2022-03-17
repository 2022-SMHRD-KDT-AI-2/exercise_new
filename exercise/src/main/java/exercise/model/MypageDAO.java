package exercise.model;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import exercise.entity.MypageOutdoorVO;
import exercise.entity.MypageVO;
import exercise.entity.OutdoorVO;
import exercise.entity.RunningVO;

public class MypageDAO {
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
	
	
	public int mypageInsert(MypageVO vo) {
	      SqlSession session=sqlSessionFactory.openSession();   
	      int cnt=session.insert("mypageInsert", vo);
	      session.commit();
	      session.close();
	      return cnt;
	   }
	
	public int mypageOutInsert(MypageOutdoorVO vo) {
	      SqlSession session=sqlSessionFactory.openSession();   
	      int cnt=session.insert("mypageOutInsert", vo);
	      session.commit();
	      session.close();
	      return cnt;
	   }
	
	public List<MypageVO> selectExercise() {
		SqlSession session = sqlSessionFactory.openSession();
		List<MypageVO> list = session.selectList("selectExercise");
		session.close();
		return list;
	}
	
	public List<MypageOutdoorVO> selectOutdoorList() {
		SqlSession session = sqlSessionFactory.openSession();
		List<MypageOutdoorVO> myOutList = session.selectList("selectOutdoorList");
		session.close();
		return myOutList;
	}
	

}
