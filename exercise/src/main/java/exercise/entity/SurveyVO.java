package exercise.entity;

public class SurveyVO {
	private int request_seq;
	private int height;
	private int weight;
	private int targetWeight;
	private String athleticPart;
	private String athleticLevel;
	private String memId;

	
	public SurveyVO() {
		
	}


	public SurveyVO(int request_seq, int height, int weight, int targetWeight, String athleticPart, String athleticLevel, String memId) {
		super();
		this.request_seq = request_seq;
		this.height = height;
		this.weight = weight;
		this.targetWeight = targetWeight;
		this.athleticPart = athleticPart;
		this.athleticLevel = athleticLevel;
		this.memId = memId;
	}




	public int getRequest_seq() {
		return request_seq;
	}


	public void setRequest_seq(int request_seq) {
		this.request_seq = request_seq;
	}


	public int getHeight() {
		return height;
	}


	public void setHeight(int height) {
		this.height = height;
	}


	public int getWeight() {
		return weight;
	}


	public void setWeight(int weight) {
		this.weight = weight;
	}


	public int getTargetWeight() {
		return targetWeight;
	}


	public void setTargetWeight(int targetWeight) {
		this.targetWeight = targetWeight;
	}


	

	public String getAthleticPart() {
		return athleticPart;
	}


	public void setAthleticPart(String athleticPart) {
		this.athleticPart = athleticPart;
	}


	public String getAthleticLevel() {
		return athleticLevel;
	}


	public void setAthleticLevel(String athleticLevel) {
		this.athleticLevel = athleticLevel;
	}


	public String getMemId() {
		return memId;
	}


	public void setMemId(String memId) {
		this.memId = memId;
	}
	
	
}



