package exercise.entity;

public class SurveyVO {
	private String gender;
	private int height;
	private int weight;
	private int targetWeight;
	private String part;
	private String level;
	private String memId;

	
	public SurveyVO() {
		
	}


	public SurveyVO(String gender, int height, int weight, int targetWeight, String part, String level, String memId) {
		super();
		this.gender = gender;
		this.height = height;
		this.weight = weight;
		this.targetWeight = targetWeight;
		this.part = part;
		this.level = level;
		this.memId = memId;
	}


	public String getGender() {
		return gender;
	}


	public void setGender(String gender) {
		this.gender = gender;
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


	public String getPart() {
		return part;
	}


	public void setPart(String part) {
		this.part = part;
	}


	public String getLevel() {
		return level;
	}


	public void setLevel(String level) {
		this.level = level;
	}


	public String getMemId() {
		return memId;
	}


	public void setMemId(String memId) {
		this.memId = memId;
	}
	
	
}



