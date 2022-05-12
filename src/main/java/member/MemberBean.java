package member;

public class MemberBean {

	private String id;
	private String pwd;
	private String name;
	private String pimg_name;
	private String pimg_size;
	private String gender;
	private String birthday;
	private String email;
	private String zipcode;
	private String address;
	private int grade;
	
	public MemberBean(String id, String pwd, String name, String pimg_name,
	 String pimg_size, String gender, String birthday, String email,
	 String zipcode, String address, int grade) {
		this.id=id;
		this.pwd=pwd;
		this.name=name;
		this.pimg_name=pimg_name;
		this.pimg_size=pimg_size;
		this.gender=gender;
		this.birthday=birthday;
		this.email=email;
		this.zipcode=zipcode;
		this.address=address;
		this.grade=grade;		
		
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
	public String getPimg_name() {
		return pimg_name;
	}
	public void setPimg_name(String pimg_name) {
		this.pimg_name = pimg_name;
	}
	public String getPimg_size() {
		return pimg_size;
	}
	public void setPimg_size(String pimg_size) {
		this.pimg_size = pimg_size;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getZipcode() {
		return zipcode;
	}
	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public int getGrade() {
		return grade;
	}
	public void setGrade(int grade) {
		this.grade = grade;
	}
}
	