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

import BEAN.DonHang;
import BEAN.GioHang;
import BEAN.sanpham;
import DAO.GioHangDao;
import DAO.SanphamDao;


/**
 * Servlet implementation class XemThongTinDonHangController
 */
@WebServlet("/XemThongTinDonHangController")
public class XemThongTinDonHangController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public XemThongTinDonHangController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		HttpSession session = request.getSession();
		GioHang gioHang = (GioHang) session.getAttribute("giohang");
		if (gioHang == null) {
			gioHang = new GioHang();
		}
		request.setAttribute("giohang", gioHang);
		RequestDispatcher rs = request.getRequestDispatcher("giohang.jsp");
		rs.forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
