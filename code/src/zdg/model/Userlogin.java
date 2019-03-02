package zdg.model;

/**
 * Userlogin entity. @author MyEclipse Persistence Tools
 */

public class Userlogin implements java.io.Serializable {

	// Fields

	private Integer id;
	private String username;
	private String password;
	private User user;

	// Constructors

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	/** default constructor */
	public Userlogin() {
	}

	/** full constructor */
	public Userlogin(String username, String password) {
		this.username = username;
		this.password = password;
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

}