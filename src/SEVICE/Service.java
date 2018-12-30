package SEVICE;

import java.util.ArrayList;

import BEAN.DonHang;
import BEAN.sanpham;
import DAO.SanphamDao;

public class Service {

	public static long tinhTien(ArrayList<DonHang> listdonhang) {
		 long result = 0;
		 ArrayList<sanpham> listsanpham = SanphamDao.getAllsanpham();
		 for (int i = 0 ; i < listdonhang.size() ; i ++) {
			 for (int j = 0; j < listsanpham.size() ; j ++) {
				 if (listsanpham.get(j).getId() == listdonhang.get(i).getIdSanPham()) {
					 result += listsanpham.get(j).getGia() * listdonhang.get(i).getSoLuongSanPham();
				 }
			 }
		 }
		 return result;
	}
}
