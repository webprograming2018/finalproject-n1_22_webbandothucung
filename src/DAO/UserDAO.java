package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import BEAN.User;
import DB.DBConnection;

public class UserDAO {
	public static int checkUSer(String username, String password) {
		int result = 0;

		// check voi db
		Connection con = DBConnection.CreateConnection();
		String query = "select count(*) from user where username = ? and password = ?";
		try {
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, username);
			ps.setString(2, password);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				result = rs.getInt(1);
			}

			ps.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println(e.getMessage());
		}

		return result;
	}

	public static User getUserByUserName(String username) {

		User user = new User();
		Connection con = DBConnection.CreateConnection();
		String query = "select * from user where username = ? ";
		try {
			PreparedStatement ps =  con.prepareStatement(query);
			ps.setString(1, username);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				int iduser = rs.getInt("id");
				String username1 = rs.getString("username");
				String password = rs.getString("password");
				String name = rs.getString("name");
				user = new User(iduser,username1, password, name);

				return user;
			}

			ps.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println(e.getMessage());
		}

		return user;
	}
	
}
