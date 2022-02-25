package Model;

public class CouponVO {
	private int stamp;
	private String id;
	private String date;
	private String o_num;
	
	public CouponVO(int stamp, String id, String date, String o_num) {
		super();
		this.stamp = stamp;
		this.id = id;
		this.date = date;
		this.o_num = o_num;
	}
	
	
	
	public CouponVO(String id) {
		super();
		this.id = id;
	}



	public int getStamp() {
		return stamp;
	}
	public void setStamp(int stamp) {
		this.stamp = stamp;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getO_num() {
		return o_num;
	}
	public void setO_num(String o_num) {
		this.o_num = o_num;
	}
	
	
}
