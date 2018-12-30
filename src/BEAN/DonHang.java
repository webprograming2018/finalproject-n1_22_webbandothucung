package BEAN;

public class DonHang {

	private int idDonHang;
	private int idUser;
	private int idSanPham;
	private int soLuongSanPham;
	private int thanhtoan;
	public int getIdDonHang() {
		return idDonHang;
	}
	public void setIdDonHang(int idDonHang) {
		this.idDonHang = idDonHang;
	}
	public int getIdUser() {
		return idUser;
	}
	public void setIdUser(int idUser) {
		this.idUser = idUser;
	}
	public int getIdSanPham() {
		return idSanPham;
	}
	public void setIdSanPham(int idSanPham) {
		this.idSanPham = idSanPham;
	}
	public int getSoLuongSanPham() {
		return soLuongSanPham;
	}
	public void setSoLuongSanPham(int soLuongSanPham) {
		this.soLuongSanPham = soLuongSanPham;
	}
	public int getThanhtoan() {
		return thanhtoan;
	}
	public void setThanhtoan(int thanhtoan) {
		this.thanhtoan = thanhtoan;
	}
	public DonHang(int idDonHang, int idUser, int idSanPham, int soLuongSanPham, int thanhtoan) {
		super();
		this.idDonHang = idDonHang;
		this.idUser = idUser;
		this.idSanPham = idSanPham;
		this.soLuongSanPham = soLuongSanPham;
		this.thanhtoan = thanhtoan;
	}
	public DonHang() {
		super();
	}
	
	
}
