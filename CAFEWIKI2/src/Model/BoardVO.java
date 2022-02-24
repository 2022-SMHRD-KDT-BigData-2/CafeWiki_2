package Model;

import java.security.Timestamp;

public class BoardVO {
	private int B_NUM;
	private String B_TITLE; 
	private String B_DATE; 
	private String B_CONT; 
	private String B_FILE;
	private int O_NUM;
	public BoardVO(int b_NUM, String b_TITLE, String b_DATE, String b_CONT, String b_FILE, int o_NUM) {
		super();
		B_NUM = b_NUM;
		B_TITLE = b_TITLE;
		B_DATE = b_DATE;
		B_CONT = b_CONT;
		B_FILE = b_FILE;
		O_NUM = o_NUM;
	}
	public BoardVO() {
		// TODO Auto-generated constructor stub
	}
	public int getB_NUM() {
		return B_NUM;
	}
	public void setB_NUM(int b_NUM) {
		B_NUM = b_NUM;
	}
	public String getB_TITLE() {
		return B_TITLE;
	}
	public void setB_TITLE(String b_TITLE) {
		B_TITLE = b_TITLE;
	}
	public String getB_DATE() {
		return B_DATE;
	}
	public void setB_DATE(String b_DATE) {
		B_DATE = b_DATE;
	}
	public String getB_CONT() {
		return B_CONT;
	}
	public void setB_CONT(String b_CONT) {
		B_CONT = b_CONT;
	}
	public String getB_FILE() {
		return B_FILE;
	}
	public void setB_FILE(String b_FILE) {
		B_FILE = b_FILE;
	}
	public int getO_NUM() {
		return O_NUM;
	}
	public void setO_NUM(int o_NUM) {
		O_NUM = o_NUM;
	}
	
	
	} 
	
	

