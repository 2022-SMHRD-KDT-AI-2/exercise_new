package exercise.model;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import exercise.entity.BoardVO;
import exercise.entity.MemberVO;

// JDBC(Java+SQL) : 자바데이터베이스프로그래밍(JDBC Programming-CRUD)
//   -> Mybatis(SQL Mapping Framework)
public class BoardDAO {
	//이제 mybatis api를 사용한다.(Connection POOL)
	private static SqlSessionFactory sqlSessionFactory;
	// 초기화블럭(프로그램 실행시 한번만 실행되는 부분)
	static {
		try {
			String resource = "exercise/model/config.xml";
			InputStream inputStream = Resources.getResourceAsStream(resource);
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);	
		} catch (Exception e) {
			
		}
	}
		// board table에서 게시판 전체리스트를 가져오기
		public List<BoardVO> selectAll() {
			SqlSession session = sqlSessionFactory.openSession();
			// SqlSession은 어떤 정보를 알고 있어야 될까?
			// 1. SQL문장이 어디 있는지(BoardMapper.xml)
			// -> select * from board
			List<exercise.entity.BoardVO> list = session.selectList("selectAll");
			session.close(); // 반납
			return list;
		}
		
		
		// 게시판등록 메서드를 정의
		public int boardInsert(BoardVO vo) {
		      SqlSession session=sqlSessionFactory.openSession();   
		      int cnt=session.insert("boardInsert", vo);
		      session.commit();
		      session.close();// 반납(*)
		      return cnt;
		   }
		
		
		// 주어진 idx에 해당하는 게시판을 가져오는 동작 
		public BoardVO getByIdx(int idx) {
			SqlSession session=sqlSessionFactory.openSession();
			BoardVO vo = session.selectOne("getByIdx", idx);
			session.close();
			return vo;
		}
		
		// 주어진 idx에 해당하는 게시판을 삭제하는 메소드
		public void boardDelete(int idx) {
			// SqlSession = Connection + Statement
			SqlSession session=sqlSessionFactory.openSession();
			session.delete("boardDelete", idx);
			session.commit();
			session.close();
		}
		
		public void boardUpdate(BoardVO vo) {
			SqlSession session=sqlSessionFactory.openSession();
			session.update("boardUpdate", vo);
			session.commit();
			session.close();
		}
		
		//  조회수 누적 메소드 addCount()
		public void addCount(int idx) {
			SqlSession session=sqlSessionFactory.openSession();
			session.update("addCount", idx);
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

