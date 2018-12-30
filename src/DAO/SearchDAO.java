package DAO;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import BEAN.sanpham;

public class SearchDAO {
	public static List<sanpham> Displayresult(HttpServletRequest request, Connection conn, String name1) {
		List<sanpham> list = new ArrayList<sanpham>();
		String sql = "select * from sanpham where tensp like '%"+name1+"%'";
		try {
			PreparedStatement ptmt = conn.prepareStatement(sql);
			//ptmt.setString(1, name1);
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

					System.out.println(tensp);
				}
			}

			ptmt.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
}
