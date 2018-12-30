package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import BEAN.DonHang;
import BEAN.User;
import BEAN.sanpham;
import DAO.GioHangDao;

/**
 * Servlet implementation class InsertSanPhamToGioHangController
 */
@WebServlet("/InsertSanPhamToGioHangController")
public class InsertSanPhamToGioHangController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertSanPhamToGioHangController() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		sanpham sp = (sanpham) session.getAttribute("sanpham");
		int idsanpham = sp.getId();
		User us = (User)session.getAttribute("user");
		int iduser= us.getIduser();
		int iddonhang = (int) session.getAttribute("iddonhang");
		int soluong = (int)session.getAttribute("soluong");
		System.out.println(idsanpham + " " + soluong + " " + iduser + " " + iddonhang);
		//GioHangDao.insertSanPham(idsanpham, soluong, iduser, iddonhang);
		
		session.removeAttribute("sanpham");
		session.removeAttribute("soluong");
		RequestDispatcher rs = request.getRequestDispatcher("XemThongTinDonHangController");
		rs.forward(request, response);
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}

}
