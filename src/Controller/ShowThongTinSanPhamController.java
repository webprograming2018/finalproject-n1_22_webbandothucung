package Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import BEAN.GioHang;
import BEAN.sanpham;
import DAO.SanphamDao;

@WebServlet("/ShowThongTinSanPhamController")
public class ShowThongTinSanPhamController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ShowThongTinSanPhamController() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ArrayList<sanpham> listsanpham = SanphamDao.getAllsanpham();
		ArrayList<sanpham> listsanphamtheosoluong = SanphamDao.getSanPhamBySoLuong();
		HttpSession session = request.getSession();
		String id = request.getParameter("idsanpham");
		sanpham sp = SanphamDao.getSanPhamById(Integer.valueOf(id));

		GioHang gioHang = (GioHang) session.getAttribute("giohang");
		if (gioHang == null) {
			gioHang = new GioHang();
		}

		request.setAttribute("listsanphamtheosoluong", listsanphamtheosoluong);
		request.setAttribute("listsanpham", listsanpham);
		request.setAttribute("giohang", gioHang);
		session.setAttribute("sanpham", sp);

		RequestDispatcher rs = request.getRequestDispatcher("productdetail.jsp");
		rs.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

}
