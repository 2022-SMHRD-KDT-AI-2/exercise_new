package exercise.entity;
// ��ǰ����, ��ǰ��, ��ǰ����, ��ǰ ��ۺ�, ��ǰ�̹���
public class GoodsVO {
	private int g_seq;
	private String g_name;
	private int g_price;
	private String g_image;
	private String g_delivery;
	private String g_url;

	
	public GoodsVO() {
		
	}


	public GoodsVO(int g_seq, String g_name, int g_price, String g_image, String g_delivery, String g_url) {
		super();
		this.g_seq = g_seq;
		this.g_name = g_name;
		this.g_price = g_price;
		this.g_image = g_image;
		this.g_delivery = g_delivery;
		this.g_url = g_url;
	}


	public int getG_seq() {
		return g_seq;
	}


	public void setG_seq(int g_seq) {
		this.g_seq = g_seq;
	}


	public String getG_name() {
		return g_name;
	}


	public void setG_name(String g_name) {
		this.g_name = g_name;
	}


	public int getG_price() {
		return g_price;
	}


	public void setG_price(int g_price) {
		this.g_price = g_price;
	}

	public String getG_image() {
		return g_image;
	}


	public void setG_image(String g_image) {
		this.g_image = g_image;
	}

	public String getG_delivery() {
		return g_delivery;
	}
	
	
	public void setG_delivery(String g_delivery) {
		this.g_delivery = g_delivery;
	}

	public String getG_url() {
		return g_url;
	}


	public void setG_url(String g_url) {
		this.g_url = g_url;
	}
	
	
}



