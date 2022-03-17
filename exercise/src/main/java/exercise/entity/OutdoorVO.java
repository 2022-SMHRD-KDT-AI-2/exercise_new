package exercise.entity;

public class OutdoorVO {
	private String o_name;
	private String o_address;
	private int o_seq;
	
	
	
	public OutdoorVO() {
		
	}



	public OutdoorVO(String o_name, String o_address, int o_seq) {
		
		this.o_name = o_name;
		this.o_address = o_address;
		this.o_seq = o_seq;
	}



	public int getO_seq() {
		return o_seq;
	}



	public void setO_seq(int o_seq) {
		this.o_seq = o_seq;
	}



	public String getO_name() {
		return o_name;
	}



	public void setO_name(String o_name) {
		this.o_name = o_name;
	}



	public String getO_address() {
		return o_address;
	}



	public void setO_address(String o_address) {
		this.o_address = o_address;
	}
	
	
	
}
