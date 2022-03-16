package exercise.entity;

public class ParkVO {
	private String park_name;
	private String park_addr;
	private String park_area;
	
	
	
	public ParkVO() {
		
	}



	public ParkVO(String park_name, String park_addr, String park_area) {
		
		this.park_name = park_name;
		this.park_addr = park_addr;
		this.park_area = park_area;
	}



	public String getPark_name() {
		return park_name;
	}



	public void setPark_name(String park_name) {
		this.park_name = park_name;
	}



	public String getPark_addr() {
		return park_addr;
	}



	public void setPark_addr(String park_addr) {
		this.park_addr = park_addr;
	}



	public String getPark_area() {
		return park_area;
	}



	public void setPark_area(String park_area) {
		this.park_area = park_area;
	}
	
	
	
	
}
