package Model;

public class MemberVO {
	private String id;
	private String o_num;
	private String pw;
	private String name;
	private String tel;
	private String email;
	private String birth;
	private String gender;
	private int u_num;

	public MemberVO(String id, String o_num, String pw, String name, String tel, String email, String birth,
			String gender, int u_num) {
		super();
		this.id = id;
		this.o_num = o_num;
		this.pw = pw;
		this.name = name;
		this.tel = tel;
		this.email = email;
		this.birth = birth;
		this.gender = gender;
		this.u_num = u_num;
	}

	public MemberVO(String id, String pw, String tel, String email) {
		super();
		this.id = id;
		this.pw = pw;
		this.tel = tel;
		this.email = email;
	} // 회원정보수정

	public MemberVO(String id, String pw, String name, String tel, String email, String birth, String gender,
			int u_num) {
		super();
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.tel = tel;
		this.email = email;
		this.birth = birth;
		this.gender = gender;
		this.u_num = u_num;
	}// o_num제외

	public MemberVO(String id, String pw, String name, String tel, String email, String birth, String gender) {
		super();
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.tel = tel;
		this.email = email;
		this.birth = birth;
		this.gender = gender;
	}// o_num,u_num

	public MemberVO(String id, String o_num, String pw, String name, String tel, String email, String birth,
			String gender) {
		super();
		this.id = id;
		this.o_num = o_num;
		this.pw = pw;
		this.name = name;
		this.tel = tel;
		this.email = email;
		this.birth = birth;
		this.gender = gender;
	}// u_num

	public MemberVO(String id, String pw) {
		super();
		this.id = id;
		this.pw = pw;
	}// 로그인

	public MemberVO(String id, String tel, String email) {
		super();
		this.id = id;
		this.tel = tel;
		this.email = email;
	}//비밀번호 찾기

	public MemberVO(int u_num) {
		this.u_num = u_num;
	}// 쿠폰 적립할 대상 찾기
	
	

	public MemberVO() {
		super();
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getO_num() {
		return o_num;
	}

	public void setO_num(String o_num) {
		this.o_num = o_num;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public int getU_num() {
		return u_num;
	}

	public void setU_num(int u_num) {
		this.u_num = u_num;
	}

}