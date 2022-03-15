package exercise.model;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import exercise.entity.GoodsVO;

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
		public List<GoodsVO> selectAll() {
			SqlSession session = sqlSessionFactory.openSession();
			List<exercise.entity.GoodsVO> list = session.selectList("selectAll");
			session.close();
			return list;
		}

}
