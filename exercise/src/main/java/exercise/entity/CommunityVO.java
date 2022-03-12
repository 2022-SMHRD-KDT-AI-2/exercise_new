package exercise.entity;
//게시판 : BoardVO(글 순번, 글 제목, 글 내용, 글 첨부파일, 글 작성일자, 글 작성자)
public class CommunityVO {
	private int idx;
	private int article_seq;
	private String articletitle;
	private String articleconent;
	private String articlefile;
	private int  articledate;
	private String memId;

	public CommunityVO() {}
	public CommunityVO(int idx, int article_seq, String articletitle, String articleconent, String articlefile, int articledate, String memId) {
		super();
		this.idx = idx;
		this.article_seq = article_seq;
		this.articletitle = articletitle;
		this.articleconent = articleconent;
		this.articlefile = articlefile;
		this. articledate =articledate;
		this.memId = memId;
	}
	// getter/setter method
	public int getIdx() {
		return idx;
	}
	
	public void setIdx(int idx) {
		this.idx = idx;
	}

	public int getArticle_seq() {
		return article_seq;
	}

	public void setArticle_seq(int article_seq) {
		this.article_seq = article_seq;
	}

	public String getArticletitle() {
		return articletitle;
	}

	public void setArticletitle(String articletitle) {
		this.articletitle = articletitle;
	}

	public String getArticleconent() {
		return articleconent;
	}

	public void setArticleconent(String articleconent) {
		this.articleconent = articleconent;
	}

	public String getArticlefile() {
		return articlefile;
	}

	public void setArticlefile(String articlefile) {
		this.articlefile = articlefile;
	}

	public int getArticledate() {
		return articledate;
	}

	public void setArticledate(int articledate) {
		this.articledate = articledate;
	}

	public String getMemId() {
		return memId;
	}

	public void setMemId(String memId) {
		this.memId = memId;
	}
	
	
}
