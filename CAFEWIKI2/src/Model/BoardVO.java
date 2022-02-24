package Model;

public class BoardVO {
	private int b_num;
	private String b_title; 
	private String b_date; 
	private String b_cont; 
	private String b_file;
	private String o_num;

	
	public BoardVO(String b_title, String b_cont, String b_file, String o_num) {
		super();
		this.b_title = b_title;
		this.b_cont = b_cont;
		this.b_file = b_file;
		this.o_num = o_num;
	}
	
	

	public BoardVO(int b_num, String b_title, String b_date, String b_cont, String b_file, String o_num) {
		super();
		this.b_num = b_num;
		this.b_title = b_title;
		this.b_date = b_date;
		this.b_cont = b_cont;
		this.b_file = b_file;
		this.o_num = o_num;
	}



	public BoardVO() {
		
	}



	public int getB_num() {
		return b_num;
	}



	public void setB_num(int b_num) {
		this.b_num = b_num;
	}



	public String getB_title() {
		return b_title;
	}



	public void setB_title(String b_title) {
		this.b_title = b_title;
	}



	public String getB_date() {
		return b_date;
	}



	public void setB_date(String b_date) {
		this.b_date = b_date;
	}



	public String getB_cont() {
		return b_cont;
	}



	public void setB_cont(String b_cont) {
		this.b_cont = b_cont;
	}



	public String getB_file() {
		return b_file;
	}



	public void setB_file(String b_file) {
		this.b_file = b_file;
	}



	public String getO_num() {
		return o_num;
	}



	public void setO_num(String o_num) {
		this.o_num = o_num;
	}
	


	
	
}