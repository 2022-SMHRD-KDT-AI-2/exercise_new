package exercise.entity;

public class MypageVO {
	private int my_seq;
	private String memId;
	private String like_video;
	private String like_video_name;
	
	public MypageVO() {
		
	}
	
	public MypageVO(int my_seq, String memId, String like_video, String like_video_name) {
		super();
		this.my_seq = my_seq;
		this.memId = memId;
		this.like_video = like_video;
		this.like_video_name = like_video_name;
	}







	public int getMy_seq() {
		return my_seq;
	}

	public void setMy_seq(int my_seq) {
		this.my_seq = my_seq;
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


	public String getLike_video_name() {
		return like_video_name;
	}

	public void setLike_video_name(String like_video_name) {
		this.like_video_name = like_video_name;
	}

	
}
