package exercise.model;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import exercise.entity.BoardVO;
import exercise.entity.MemberVO;

// JDBC(Java+SQL) : �ڹٵ����ͺ��̽����α׷���(JDBC Programming-CRUD)
//   -> Mybatis(SQL Mapping Framework)
public class BoardDAO {
	//���� mybatis api�� ����Ѵ�.(Connection POOL)
	private static SqlSessionFactory sqlSessionFactory;
	// �ʱ�ȭ��(���α׷� ����� �ѹ��� ����Ǵ� �κ�)
	static {
		try {
			String resource = "exercise/model/config.xml";
			InputStream inputStream = Resources.getResourceAsStream(resource);
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);	
		} catch (Exception e) {
			
		}
	}
		// board table���� �Խ��� ��ü����Ʈ�� ��������
		public List<BoardVO> selectAll() {
			SqlSession session = sqlSessionFactory.openSession();
			// SqlSession�� � ������ �˰� �־�� �ɱ�?
			// 1. SQL������ ��� �ִ���(BoardMapper.xml)
			// -> select * from board
			List<exercise.entity.BoardVO> list = session.selectList("selectAll");
			session.close(); // �ݳ�
			return list;
		}
		
		
		// �Խ��ǵ�� �޼��带 ����
		public int boardInsert(BoardVO vo) {
		      SqlSession session=sqlSessionFactory.openSession();   
		      int cnt=session.insert("boardInsert", vo);
		      session.commit();
		      session.close();// �ݳ�(*)
		      return cnt;
		   }
		
		
		// �־��� idx�� �ش��ϴ� �Խ����� �������� ���� 
		public BoardVO getByIdx(int idx) {
			SqlSession session=sqlSessionFactory.openSession();
			BoardVO vo = session.selectOne("getByIdx", idx);
			session.close();
			return vo;
		}
		
		// �־��� idx�� �ش��ϴ� �Խ����� �����ϴ� �޼ҵ�
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
		
		//  ��ȸ�� ���� �޼ҵ� addCount()
		public void addCount(int idx) {
			SqlSession session=sqlSessionFactory.openSession();
			session.update("addCount", idx);
			session.commit();
			session.close();
		}
		
		//ȸ���������θ� Ȯ���ϴ� �޼���
		public MemberVO checkLogin(MemberVO vo) {
			SqlSession session=sqlSessionFactory.openSession();
			MemberVO memVO = session.selectOne("checkLogin", vo);
			session.close();
			return memVO;
			
		}
		
	}

