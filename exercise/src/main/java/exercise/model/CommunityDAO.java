package exercise.model;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import exercise.entity.CommunityVO;
import exercise.entity.MemberVO;

public class CommunityDAO {
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
		public List<CommunityVO> selectAll() {
			SqlSession session = sqlSessionFactory.openSession();
			List<exercise.entity.CommunityVO> list = session.selectList("selectAll");
			session.close();
			return list;
		}
		
		// 게시판등록 메서드를 정의
		public int communityInsert(CommunityVO vo) {
		      SqlSession session=sqlSessionFactory.openSession();   
		      int cnt=session.insert("communityInsert", vo);
		      session.commit();
		      session.close();// 반납(*)
		      return cnt;
		   }
		// 
		public CommunityVO getBySeq(int article_seq) {
			SqlSession session=sqlSessionFactory.openSession();
			CommunityVO vo = session.selectOne("getBySeq", article_seq);
			session.close();
			return vo;
		}
		
		// 주어진 idx에 해당하는 게시판을 삭제하는 메소드
		public void communityDelete(int article_seq) {
			// SqlSession = Connection + Statement
			SqlSession session=sqlSessionFactory.openSession();
			session.delete("communityDelete", article_seq);
			session.commit();
			session.close();
		}
		
		public void communityUpdate(CommunityVO vo) {
			SqlSession session=sqlSessionFactory.openSession();
			session.update("communityUpdate", vo);
			session.commit();
			session.close();
		}
		
		//  조회수 누적 메소드 addCount()
		public void addCount(int article_seq) {
			SqlSession session=sqlSessionFactory.openSession();
			session.update("addCount", article_seq);
			session.commit();
			session.close();
		}
		
		//회원인증여부를 확인하는 메서드
		public MemberVO checkLogin(MemberVO vo) {
			SqlSession session=sqlSessionFactory.openSession();
			MemberVO memVO = session.selectOne("checkLogin", vo);
			session.close();
			return memVO;			
		}
	}

