package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import BEAN.sanpham;
import DB.DBConnection;

public class SanphamDao {

	public static ArrayList<sanpham> getAllsanpham(){
		Connection conn = DBConnection.CreateConnection();
		ArrayList<sanpham> list = new ArrayList<sanpham>();
		String sql = "select * from sanpham";
		try {
			PreparedStatement ptmt = conn.prepareStatement(sql);
			ResultSet rs = ptmt.executeQuery();
			if (!rs.isBeforeFirst()) {
				System.out.println("khong co kq");
			} else {
				while (rs.next()) {
					String anh = rs.getString("anh");
					String tensp = rs.getString("tensp");
                    int gia = rs.getInt("gia");
                    int id = rs.getInt("id");
                    sanpham sp= new sanpham(tensp,id, gia,anh);
					list.add(sp);
				}
			}

			ptmt.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
	public static ArrayList<sanpham> getSanPhamBySoLuong(){
		Connection conn = DBConnection.CreateConnection();
		ArrayList<sanpham> list = new ArrayList<sanpham>();
		String sql ="select sum(soluong) as sum, idsanpham as id, tensp, anh, gia from chitietdonhang join sanpham on chitietdonhang.idsanpham = sanpham.id group by idsanpham order by sum desc limit 0,3";
		try {
			PreparedStatement ptmt = conn.prepareStatement(sql);
			ResultSet rs = ptmt.executeQuery();
			if (!rs.isBeforeFirst()) {
				System.out.println("khong co kq");
			} else {
				while (rs.next()) {
					String anh = rs.getString("anh");
					String tensp = rs.getString("tensp");
                    int gia = rs.getInt("gia");
                    int id = rs.getInt("id");
                    sanpham sp= new sanpham(tensp,id, gia,anh);
					list.add(sp);
				}
			}

			ptmt.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	public static sanpham getSanPhamById(int idSanPham) {
		Connection conn = DBConnection.CreateConnection();
		sanpham sp = new sanpham();
		String sql = "select * from sanpham where id = ? ";
		try {
			PreparedStatement ptmt = conn.prepareStatement(sql);
			ptmt.setInt(1, idSanPham);
			ResultSet rs = ptmt.executeQuery();
			if (!rs.isBeforeFirst()) {
				System.out.println("khong co kq");
			} else {
				while (rs.next()) {
					String anh = rs.getString("anh");
					String tensp = rs.getString("tensp");
                    int gia = rs.getInt("gia");
                    int id = rs.getInt("id");
                    sp= new sanpham(tensp,id, gia,anh);
				}
			}

			ptmt.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return sp;
		
	}
	
	public static void main(String[] args) {
		System.out.println(getSanPhamBySoLuong().size());
	}
}
