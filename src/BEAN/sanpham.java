package BEAN;

public class sanpham {
	private String tensp;
	private int id;
	private int gia;
	private String anh;
	private int soLuong;
	public String getChiTietSanPham() {
		return chiTietSanPham;
	}
	public void setChiTietSanPham(String chiTietSanPham) {
		this.chiTietSanPham = chiTietSanPham;
	}
	private String chiTietSanPham;
	
	public String getTensp() {
		return tensp;
	}
	public void setTensp(String tensp) {
		this.tensp = tensp;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getGia() {
		return gia;
	}
	public void setGia(int gia) {
		this.gia = gia;
	}
	public String getAnh() {
		return anh;
	}
	public void setAnh(String anh) {
		this.anh = anh;
	}
	public sanpham(String tensp, int id, int gia, String anh) {
		super();
		this.tensp = tensp;
		this.id = id;
		this.gia = gia;
		this.anh = anh;
	}
	public sanpham() {
		super();
	}
	public int getSoLuong() {
		return soLuong;
	}
	public void setSoLuong(int soLuong) {
		this.soLuong = soLuong;
	}
}
