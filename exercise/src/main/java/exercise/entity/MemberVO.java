package exercise.entity;
//회원(아이디, 비밀번호, 이름)
public class MemberVO {
	private String memId;
	private String memPwd;
	private String memUser;
	public MemberVO() {
		
	}
	public MemberVO(String memId, String memPwd, String memUser) {
		super();
		this.memId = memId;
		this.memPwd = memPwd;
		this.memUser = memUser;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public String getMemPwd() {
		return memPwd;
	}
	public void setMemPwd(String memPwd) {
		this.memPwd = memPwd;
	}
	public String getMemUser() {
		return memUser;
	}
	public void setMemUser(String memUser) {
		this.memUser = memUser;
	}
	
}
