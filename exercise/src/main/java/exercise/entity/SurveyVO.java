package exercise.entity;

public class SurveyVO {
	private int seq;
	private int height;
	private int weight;
	private int targetWeight;
	private String part;
	private String level;
	private String memId;

	
	public SurveyVO() {
		
	}


	public SurveyVO(int seq, int height, int weight, int targetWeight, String part, String level, String memId) {
		super();
		this.seq = seq;
		this.height = height;
		this.weight = weight;
		this.targetWeight = targetWeight;
		this.part = part;
		this.level = level;
		this.memId = memId;
	}


	public int getSeq() {
		return seq;
	}


	public void setSeq(int seq) {
		this.seq = seq;
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



