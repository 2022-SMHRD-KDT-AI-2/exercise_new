package exercise.entity;

public class MypageOutdoorVO {
	private int myout_seq;
	private String memId;
	private String myout_name;
	private String myout_addr;
	
	public MypageOutdoorVO() {
		
	}

	public MypageOutdoorVO(int myout_seq, String memId, String myout_name, String myout_addr) {
		
		this.myout_seq = myout_seq;
		this.memId = memId;
		this.myout_name = myout_name;
		this.myout_addr = myout_addr;
	}

	public int getMyout_seq() {
		return myout_seq;
	}

	public void setMyout_seq(int myout_seq) {
		this.myout_seq = myout_seq;
	}

	public String getMemId() {
		return memId;
	}

	public void setMemId(String memId) {
		this.memId = memId;
	}

	public String getMyout_name() {
		return myout_name;
	}

	public void setMyout_name(String myout_name) {
		this.myout_name = myout_name;
	}

	public String getMyout_addr() {
		return myout_addr;
	}

	public void setMyout_addr(String myout_addr) {
		this.myout_addr = myout_addr;
	}
	
	
}
