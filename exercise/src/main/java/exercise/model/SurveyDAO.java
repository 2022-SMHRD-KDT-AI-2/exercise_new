package exercise.model;

import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import exercise.entity.CommunityVO;
import exercise.entity.SurveyVO;

public class SurveyDAO {
	private static SqlSessionFactory sqlSessionFactory;
	// �ʱ�ȭ��(���α׷� ����� �ѹ��� ����Ǵ� �κ�)
	static {
		try {
		String resource = "mapper/config.xml";
		InputStream inputStream = Resources.getResourceAsStream(resource);
		sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
		}catch(Exception e) {
			e.printStackTrace();
		
		}
	}
	public int surveyInsert(SurveyVO vo) {
		  SqlSession session = sqlSessionFactory.openSession();  
	      int cnt=session.insert("surveyInsert", vo);
	      session.commit();
	      session.close();
	      return cnt;
	}
	
	public void surveyUpdate(SurveyVO vo) {
		SqlSession session=sqlSessionFactory.openSession();
		session.update("surveyUpdate", vo);
		session.commit();
		session.close();
	}
	
}
