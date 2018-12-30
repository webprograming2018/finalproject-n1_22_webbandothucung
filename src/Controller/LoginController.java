package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import BEAN.User;
import DAO.GioHangDao;
import DAO.UserDAO;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginController() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String username = request.getParameter("username");
		String password = request.getParameter("password");

		// dieu huong o day
		// check xem user co ton tai hay khong
		int result = UserDAO.checkUSer(username, password);
		if (result > 0) {
			// ton tai user nay
			User user = UserDAO.getUserByUserName(username);
			HttpSession session = request.getSession();
			session.setAttribute("user", user);
			int iddonhang = GioHangDao.getNewIdDonHang();
			session.setAttribute("iddonhang", iddonhang);
			String name = user.getUsername();
			session.setAttribute("username", name);
			request.setAttribute("tenhienthi", name);
			response.sendRedirect("InsertSanPhamToGioHangController");

		} else {
			response.sendRedirect("login.jsp");
		}
	}

}
