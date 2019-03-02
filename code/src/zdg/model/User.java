package zdg.model;

import java.sql.Timestamp;

/**
 * User entity. @author MyEclipse Persistence Tools
 */

public class User implements java.io.Serializable {

	// Fields

	private Integer id;
	private String username;
	private String password;
	private String realname;
	private String useremail;
	private String birthdate;
	private String sex;
	private String qqnumber;
	private String hobby;
	private String userphone;
	private String apartmentnumber;
	private String dormnumber;
	private String coments;
	private Integer yiMoney;
	private Timestamp regTime;
	private Userlogin userlogin;

	// Constructors

	public Userlogin getUserlogin() {
		return userlogin;
	}

	public void setUserlogin(Userlogin userlogin) {
		this.userlogin = userlogin;
	}

	/** default constructor */
	public User() {
	}

	/** full constructor */
	public User(String username, String password, String realname,
			String useremail, String birthdate, String sex, String qqnumber,
			String hobby, String userphone, String apartmentnumber,
			String dormnumber, String coments, Integer yiMoney,
			Timestamp regTime) {
		this.username = username;
		this.password = password;
		this.realname = realname;
		this.useremail = useremail;
		this.birthdate = birthdate;
		this.sex = sex;
		this.qqnumber = qqnumber;
		this.hobby = hobby;
		this.userphone = userphone;
		this.apartmentnumber = apartmentnumber;
		this.dormnumber = dormnumber;
		this.coments = coments;
		this.yiMoney = yiMoney;
		this.regTime = regTime;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getRealname() {
		return this.realname;
	}

	public void setRealname(String realname) {
		this.realname = realname;
	}

	public String getUseremail() {
		return this.useremail;
	}

	public void setUseremail(String useremail) {
		this.useremail = useremail;
	}

	public String getBirthdate() {
		return this.birthdate;
	}

	public void setBirthdate(String birthdate) {
		this.birthdate = birthdate;
	}

	public String getSex() {
		return this.sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getQqnumber() {
		return this.qqnumber;
	}

	public void setQqnumber(String qqnumber) {
		this.qqnumber = qqnumber;
	}

	public String getHobby() {
		return this.hobby;
	}

	public void setHobby(String hobby) {
		this.hobby = hobby;
	}

	public String getUserphone() {
		return this.userphone;
	}

	public void setUserphone(String userphone) {
		this.userphone = userphone;
	}

	public String getApartmentnumber() {
		return this.apartmentnumber;
	}

	public void setApartmentnumber(String apartmentnumber) {
		this.apartmentnumber = apartmentnumber;
	}

	public String getDormnumber() {
		return this.dormnumber;
	}

	public void setDormnumber(String dormnumber) {
		this.dormnumber = dormnumber;
	}

	public String getComents() {
		return this.coments;
	}

	public void setComents(String coments) {
		this.coments = coments;
	}

	public Integer getYiMoney() {
		return this.yiMoney;
	}

	public void setYiMoney(Integer yiMoney) {
		this.yiMoney = yiMoney;
	}

	public Timestamp getRegTime() {
		return this.regTime;
	}

	public void setRegTime(Timestamp regTime) {
		this.regTime = regTime;
	}

}