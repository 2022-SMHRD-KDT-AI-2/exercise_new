package exercise.model;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import exercise.entity.GoodsVO;
import exercise.entity.SurveyVO;

public class GoodsDAO {
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
		public void Goods(GoodsVO vo) {
			SqlSession session=sqlSessionFactory.openSession();
			session.update("Goods", vo);
			session.commit();
			session.close();
		}

}
