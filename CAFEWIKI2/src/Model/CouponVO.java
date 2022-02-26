package Model;

public class CouponVO {

	private String id;
	private String s_date;
	private int stamp;
	private String o_num;
	
	public CouponVO(String id, int stamp, String s_date, String o_num) {
		super();
		this.id = id;
		this.stamp = stamp;
		this.s_date = s_date;
		this.o_num = o_num;
	}
	
	
	public CouponVO(String id) {
		super();
		this.id = id;
	}



	public CouponVO() {
		
	}

	

	public CouponVO(String id, String o_num) {
		super();
		this.id = id;
		this.o_num = o_num;
	}


	public CouponVO(String id, int stamp, String o_num) {
		super();
		this.id = id;	
		this.stamp = stamp;
		this.o_num = o_num;
	
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
	public String getS_Date() {
		return s_date;
	}
	public void setS_Date(String date) {
		this.s_date = s_date;
	}
	public String getO_num() {
		return o_num;
	}
	public void setO_num(String o_num) {
		this.o_num = o_num;
	}
	
	
}
