package BEAN;

public class User {

	private int iduser;
	private String username ;
	private String password;
	private String name;
	public int getIduser() {
		return iduser;
	}
	public void setIduser(int iduser) {
		this.iduser = iduser;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public User() {
		super();
	}
	public User(int iduser, String username, String password, String name) {
		super();
		this.iduser = iduser;
		this.username = username;
		this.password = password;
		this.name = name;
	}
	
	
	
	
}
