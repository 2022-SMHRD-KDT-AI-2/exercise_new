package exercise.entity;

public class MypageVO {
	private String memId;
	private String like_video;
	private String like_outdoor;
	private String like_video_name;
	
	public MypageVO() {
		
	}
	
	public MypageVO(String memId, String like_video, String like_outdoor, String like_video_name) {
		super();
		this.memId = memId;
		this.like_video = like_video;
		this.like_outdoor = like_outdoor;
		this.like_video_name = like_video_name;
	}

	public String getMemId() {
		return memId;
	}

	public void setMemId(String memId) {
		this.memId = memId;
	}

	public String getLike_video() {
		return like_video;
	}

	public void setLike_video(String like_video) {
		this.like_video = like_video;
	}

	public String getLike_outdoor() {
		return like_outdoor;
	}

	public void setLike_outdoor(String like_outdoor) {
		this.like_outdoor = like_outdoor;
	}

	public String getLike_video_name() {
		return like_video_name;
	}

	public void setLike_video_name(String like_video_name) {
		this.like_video_name = like_video_name;
	}

	
}
