package exercise.entity;
//회원(아이디, 비밀번호, 이름)
public class MemberVO {
	private String memId;
	private String memPwd;
	private String memNick;
	private String gender;
	private String memAddr;
	private String memAddr1;	
	private String memAdmin;
	
	public MemberVO() {
		
	}
	
	public MemberVO(String memId, String memPwd, String memNick, String gender, String memAddr, String memAddr1, String memAdmin) {
		super();
		this.memId = memId;
		this.memPwd = memPwd;
		this.memNick = memNick;
		this.gender = gender;
		this.memAddr = memAddr;
		this.memAddr = memAddr1;
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
	
	
	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getMemAddr() {
		return memAddr;
	}

	public void setMemAddr(String memAddr) {
		this.memAddr = memAddr;
	}

	
	
	public String getMemAddr1() {
		return memAddr1;
	}

	public void setMemAddr1(String memAddr1) {
		this.memAddr1 = memAddr1;
	}

	public String getMemAdmin() {
		return memAdmin;
	}
	public void setMemAdmin(String memAdmin) {
		this.memAdmin = memAdmin;
	}

	
}
