package Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.GsonBuilder;

import BEAN.GioHang;
import BEAN.sanpham;
import DAO.SanphamDao;

/**
 * Servlet implementation class GioHangController
 */
@WebServlet("/GioHangController")
public class GioHangController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GioHangController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id = request.getParameter("id");
		String soLuong = request.getParameter("soLuong");
		sanpham sanPham = SanphamDao.getSanPhamById(Integer.parseInt(id));
		HttpSession session = request.getSession(false);
		GioHang gioHang = (GioHang) session.getAttribute("giohang");
		if (gioHang == null) {
			gioHang = new GioHang();
		}
		int sl;
		if (soLuong == null) {
			sl = 1;
		} else {
			sl = Integer.parseInt(soLuong) + 1;
		}
		gioHang.addSanPham(sanPham, sl);
		session.setAttribute("giohang", gioHang);
	    String json = new GsonBuilder().create().toJson(gioHang);
	    response.setContentType("application/json");
	    response.setCharacterEncoding("UTF-8");
	    response.getWriter().write(json);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

	@Override
	protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id = request.getParameter("id");
		int idSanPham = Integer.valueOf(id);
		HttpSession session = request.getSession(false);
		GioHang gioHang = (GioHang) session.getAttribute("giohang");
		gioHang.removeSanPham(idSanPham);
		session.setAttribute("giohang", gioHang);
	    String json = new GsonBuilder().create().toJson(gioHang);
	    response.setContentType("application/json");
	    response.setCharacterEncoding("UTF-8");
	    response.getWriter().write(json);
	}
	
	

}
