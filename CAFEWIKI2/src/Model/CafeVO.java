package Model;

public class CafeVO {

 private String o_num;
 private String location;
 private String picture;
 private String review;
 private int type;
 private String store;
 private String time;
 private String c_tel;

 
 public CafeVO(String o_num, String location, String picture, String review, int type, String store, String time,
		String c_tel) {
	super();
	this.o_num = o_num;
	this.location = location;
	this.picture = picture;
	this.review = review;
	this.type = type;
	this.store = store;
	this.time = time;
	this.c_tel = c_tel;
}

 
public CafeVO() {
	
}

public CafeVO(String o_num, String store) {
	super();
	this.o_num = o_num;
	this.store = store;
}

public CafeVO(String store) {
	super();
	this.store = store;
}


public String getO_num() {
	return o_num;
}


public void setO_num(String o_num) {
	this.o_num = o_num;
}


public String getLocation() {
	return location;
}


public void setLocation(String location) {
	this.location = location;
}


public String getPicture() {
	return picture;
}


public void setPicture(String picture) {
	this.picture = picture;
}


public String getReview() {
	return review;
}


public void setReview(String review) {
	this.review = review;
}


public int getType() {
	return type;
}


public void setType(int type) {
	this.type = type;
}


public String getStore() {
	return store;
}


public void setStore(String store) {
	this.store = store;
}


public String getTime() {
	return time;
}


public void setTime(String time) {
	this.time = time;
}


public String getC_tel() {
	return c_tel;
}


public void setC_tel(String c_tel) {
	this.c_tel = c_tel;
}
 
}
