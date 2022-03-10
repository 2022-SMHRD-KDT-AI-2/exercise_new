package exercise.entity;
//회원(아이디, 비밀번호, 이름)
public class MemberVO {
	private String memId;
	private String memPwd;
	private String memNick;
	private String memAddr;
	private String memAdmin;
	
	public MemberVO() {
		
	}
	
	public MemberVO(String memId, String memPwd, String memNick, String memAddr, String memAdmin) {
		super();
		this.memId = memId;
		this.memPwd = memPwd;
		this.memNick = memNick;
		this.memAddr = memAddr;
		this.memAdmin = memAdmin;
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
	public String getMemNick() {
		return memNick;
	}
	public void setMemNick(String memNick) {
		this.memNick = memNick;
	}
	
	
	public String getMemAddr() {
		return memAddr;
	}

	public void setMemAddr(String memAddr) {
		this.memAddr = memAddr;
	}

	public String getMemAdmin() {
		return memAdmin;
	}
	public void setMemAdmin(String memAdmin) {
		this.memAdmin = memAdmin;
	}

	
}
