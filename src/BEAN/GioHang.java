package BEAN;

import java.util.ArrayList;
import java.util.List;

public class GioHang {
	private long giaTien;
	private List<sanpham> sanphams = new ArrayList<>();
	
	
	public GioHang() {
		
	}
	public GioHang(long giaTien, List<sanpham> sanphams) {
		super();
		this.giaTien = giaTien;
		this.sanphams = sanphams;
	}
	
	public void addSanPham(sanpham sanPham, int soLuong) {
		for (sanpham sp: sanphams) {
			if (sp.getId() == sanPham.getId()) {
				sp.setSoLuong(sp.getSoLuong() + soLuong);
				return;
			}
		}
		sanPham.setSoLuong(soLuong);
		sanphams.add(sanPham);
	}
	
	public void removeSanPham(int id) {
		sanphams.removeIf(sanpham -> sanpham.getId() == id);
	}
	public long getGiaTien() {
		return giaTien;
	}
	public void setGiaTien(long giaTien) {
		this.giaTien = giaTien;
	}
	public List<sanpham> getSanphams() {
		return sanphams;
	}
	public void setSanphams(List<sanpham> sanphams) {
		this.sanphams = sanphams;
	}
	
	
	
}
