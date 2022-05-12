package member;

public class MemberBean1 {
	private String id;
	private String pwd;
	private String name;
	private String email1;
	private String email2;
	private String phonecorp;
	private String phone1;
	private String phone2;
	private String phone3;
	private String grade;
	private String imgname;
	private int imgsize;
	
	public MemberBean1() {}
	
	public MemberBean1(String id, String pwd, String name, String email1, String email2,
			 String phonecorp, String phone1, String phone2, String phone3, String grade, String imgname
			 , int imgsize) {
		this.id=id;
		this.pwd=pwd;
		this.name=name;
		this.email1=email1;
		this.email2=email2;
		this.phonecorp=phonecorp;
		this.phone1=phone1;
		this.phone2=phone2;
		this.phone3=phone3;
		this.grade=grade;	
		this.imgname=imgname;
		this.imgsize=imgsize;
		
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail1() {
		return email1;
	}

	public void setEmail1(String email1) {
		this.email1 = email1;
	}

	public String getEmail2() {
		return email2;
	}

	public void setEmail2(String email2) {
		this.email2 = email2;
	}

	public String getPhonecorp() {
		return phonecorp;
	}

	public void setPhonecorp(String phonecorp) {
		this.phonecorp = phonecorp;
	}

	public String getPhone1() {
		return phone1;
	}

	public void setPhone1(String phone1) {
		this.phone1 = phone1;
	}

	public String getPhone2() {
		return phone2;
	}

	public void setPhone2(String phone2) {
		this.phone2 = phone2;
	}

	public String getPhone3() {
		return phone3;
	}

	public void setPhone3(String phone3) {
		this.phone3 = phone3;
	}

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

	public String getImgname() {
		return imgname;
	}

	public void setImgname(String imgname) {
		this.imgname = imgname;
	}

	public int getImgsize() {
		return imgsize;
	}

	public void setImgsize(int imgsize) {
		this.imgsize = imgsize;
	}
	

	
	
	
}
