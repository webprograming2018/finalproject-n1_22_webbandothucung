package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.mysql.jdbc.Statement;

import BEAN.DonHang;
import BEAN.sanpham;
import DB.DBConnection;

public class GioHangDao {

	public static int createGioHang(int iduser) {
		Connection conn = DBConnection.CreateConnection();

		try {
			int lastDonHangId = 0;
			PreparedStatement stmt = conn.prepareStatement("insert into donhang(idusername) values (?)",
					Statement.RETURN_GENERATED_KEYS);
			stmt.setInt(1, iduser);
			stmt.executeUpdate();
			ResultSet rs = stmt.getGeneratedKeys();

			if (rs.next()) {
				lastDonHangId = rs.getInt(1);
				return lastDonHangId;
			}
		} catch (SQLException e) {
			return 0;
		}
		return 0;
	}


	public static void insertSanPham(int idSanPham, int soluong, int iddonhang) {
		Connection conn = DBConnection.CreateConnection();
		String sql = "insert into chitietdonhang(idsanpham, soluong , iddonhang) values (?,?,?)";
		try {
			PreparedStatement ptmt = conn.prepareStatement(sql);
			ptmt.setInt(1, idSanPham);
			ptmt.setInt(2, soluong);
			ptmt.setInt(3, iddonhang);
			ptmt.executeUpdate();

			ptmt.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public static ArrayList<DonHang> getDonhang(int iddonhang) {
		ArrayList<DonHang> result = new ArrayList<>();
		Connection conn = DBConnection.CreateConnection();
		sanpham sp = new sanpham();
		String sql = "select * from donhang where iddonhang = ? and thanhtoan = 0 ";
		try {
			PreparedStatement ptmt = conn.prepareStatement(sql);
			ptmt.setInt(1, iddonhang);
			ResultSet rs = ptmt.executeQuery();
			while (rs.next()) {
				int idusername = rs.getInt("idusername");
				int idsanpham = rs.getInt("idsanpham");
				int soluong = rs.getInt("soluong");

				DonHang don = new DonHang(iddonhang, idusername, idsanpham, soluong, 0);
				result.add(don);
			}
			ptmt.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	public static int getNewIdDonHang() {
		int result = 0;
		Connection conn = DBConnection.CreateConnection();
		sanpham sp = new sanpham();
		String sql = "select max(iddonhang) from donhang ";
		try {
			PreparedStatement ptmt = conn.prepareStatement(sql);
			ResultSet rs = ptmt.executeQuery();
			while (rs.next()) {
				return rs.getInt(1) + 1;
			}
			ptmt.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	public static void main(String[] args) {

		System.out.println(getNewIdDonHang());
	}
}
