package exercise.entity;
//�Խ��� : BoardVO(�� ����, �� ����, �� ����, �� ÷������, �� �ۼ�����, �� �ۼ���)
public class CommunityVO {
	private int article_seq;
	private String articleTitle;
	private String articleContent;
	private String memId;
	private String articleWriter;
	private String articleDate;
	private int count;

	public CommunityVO() {
		
	}

	public CommunityVO(int article_seq, String articleTitle, String articleContent, String memId, String articleWriter, String articleDate, int count) {
		super();

		this.article_seq = article_seq;
		this.articleTitle = articleTitle;
		this.articleContent = articleContent;
		this.memId = memId;
		this.articleWriter = articleWriter;
		this.articleDate = articleDate;
		this.count = count;
	}


	public int getArticle_seq() {
		return article_seq;
	}

	public void setArticle_seq(int article_seq) {
		this.article_seq = article_seq;
	}

	public String getArticleTitle() {
		return articleTitle;
	}

	public void setArticleTitle(String articleTitle) {
		this.articleTitle = articleTitle;
	}

	public String getArticleContent() {
		return articleContent;
	}

	public void setArticleContent(String articleContent) {
		this.articleContent = articleContent;
	}


	public String getMemId() {
		return memId;
	}

	public void setMemId(String memId) {
		this.memId = memId;
	}



	public String getArticleWriter() {
		return articleWriter;
	}

	public void setArticleWriter(String articleWriter) {
		this.articleWriter = articleWriter;
	}

	public String getArticleDate() {
		return articleDate;
	}

	public void setArticleDate(String articleDate) {
		this.articleDate = articleDate;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}
	
	
	
	
}
	
	
	