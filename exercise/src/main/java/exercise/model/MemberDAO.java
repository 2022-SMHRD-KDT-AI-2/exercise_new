package exercise.model;

import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import exercise.entity.MemberVO;

public class MemberDAO {
	private static SqlSessionFactory sqlSessionFactory;
	// 초기화블럭(프로그램 실행시 한번만 실행되는 부분)
	static {
		try {
			String resource = "mapper/config.xml";
			InputStream inputStream = Resources.getResourceAsStream(resource);
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
		} catch (Exception e) {
			e.printStackTrace();

		}
	}

	public int memberInsert(MemberVO vo) {
		SqlSession session = sqlSessionFactory.openSession();
		int cnt = session.insert("memberInsert", vo);
		session.commit();
		session.close();
		return cnt;
	}

// ID중복체크	
	public MemberVO checkId(MemberVO vo) {
		SqlSession session = sqlSessionFactory.openSession();
		MemberVO result = session.selectOne("checkId", vo);
		session.close();
		return result;
	}
	
// NICK중복체크	
	public MemberVO checkNick(MemberVO vo) {
		SqlSession session = sqlSessionFactory.openSession();
		MemberVO result = session.selectOne("checkNick", vo);
		session.close();
		return result;
	}

	public MemberVO checkLogin(MemberVO vo) {
		SqlSession session = sqlSessionFactory.openSession();
		MemberVO memVO = session.selectOne("checkLogin", vo);
		session.close();
		return memVO;

	}

}