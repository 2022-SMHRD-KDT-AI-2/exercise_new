package exercise.entity;

public class RunningVO {
	private int c_seq;
	private String c_name;
	private String c_addr;
	private String c_total_distance;
	private String c_information;
	private String memId;
	
	
	public RunningVO() {
	}
	public RunningVO(int c_seq, String c_name, String c_addr, String c_total_distance, String c_information,
			String memId) {
		this.c_seq = c_seq;
		this.c_name = c_name;
		this.c_addr = c_addr;
		this.c_total_distance = c_total_distance;
		this.c_information = c_information;
		this.memId = memId;
	}
	public int getC_seq() {
		return c_seq;
	}
	public void setC_seq(int c_seq) {
		this.c_seq = c_seq;
	}
	public String getC_name() {
		return c_name;
	}
	public void setC_name(String c_name) {
		this.c_name = c_name;
	}
	public String getC_addr() {
		return c_addr;
	}
	public void setC_addr(String c_addr) {
		this.c_addr = c_addr;
	}
	public String getC_total_distance() {
		return c_total_distance;
	}
	public void setC_total_distance(String c_total_distance) {
		this.c_total_distance = c_total_distance;
	}
	public String getC_information() {
		return c_information;
	}
	public void setC_information(String c_information) {
		this.c_information = c_information;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	
	
	
	
}
