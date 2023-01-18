package dto;

public class Kadai {
	private int id;
	private String name;
	private int age;
	private String gender;
	private String number;
	private String mail;
	private String salt;
	private String password;
	private String hashedpassword;
	public Kadai(int id, String name, int age, String gender, String number, String mail, String salt, String password,
			String hashedpassword) {
		super();
		this.id = id;
		this.name = name;
		this.age = age;
		this.gender = gender;
		this.number = number;
		this.mail = mail;
		this.salt = salt;
		this.password = password;
		this.hashedpassword = hashedpassword;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getNumber(){
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	public String getSalt() {
		return salt;
	}
	public void setSalt(String salt) {
		this.salt = salt;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getHashedpassword() {
		return hashedpassword;
	}
	public void setHashedpassword(String hashedpassword) {
		this.hashedpassword = hashedpassword;
	}
	
	
}
