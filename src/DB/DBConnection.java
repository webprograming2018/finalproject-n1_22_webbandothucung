package DB;

import java.sql.*;
public class DBConnection {
	public static Connection CreateConnection() {
		Connection conn = null;
		
		String url = "jdbc:mysql://localhost:3306/petcity";
		String username = "root";
		String password = "taidatbn97";
		try {
			//load Driver
			Class.forName("com.mysql.jdbc.Driver");
			//create connection
			conn = DriverManager.getConnection(url,username,password);
			
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		  catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return conn;
	}
	
	public static void main(String[] args) {
		System.out.println("fsdf");
	}
	
}
