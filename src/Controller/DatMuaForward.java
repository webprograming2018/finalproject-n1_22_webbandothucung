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

@WebServlet("/DatMuaForward")
public class DatMuaForward extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public DatMuaForward() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// check session
		int soluong=  Integer.valueOf(request.getParameter("soluong"));
		HttpSession session = request.getSession();
		session.setAttribute("soluong", soluong);
		User user = (User) session.getAttribute("user");
		if (user == null) {
			// chuyen huong den trang login
			RequestDispatcher rs = request.getRequestDispatcher("login.jsp");
			rs.forward(request, response);
		}else {
			//  ton tai session, khong can chuyen huong nua
			
			RequestDispatcher rs = request.getRequestDispatcher("InsertSanPhamToGioHangController");
			rs.forward(request, response);
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

}
