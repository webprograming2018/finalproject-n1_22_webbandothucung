package Controller;

import java.io.IOException;
import java.sql.Connection;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BEAN.sanpham;
import DAO.SearchDAO;
import DB.DBConnection;

@WebServlet("/SearchController")
public class SearchController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SearchController() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		Connection conn = DBConnection.CreateConnection();
		String tensp = request.getParameter("tensp");
		
		List<sanpham> list = SearchDAO.Displayresult(request, conn, tensp);
		request.setAttribute("listsp",list);

		RequestDispatcher rd = request.getRequestDispatcher("/View/Result.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Connection conn = DBConnection.CreateConnection();
		String tensp = request.getParameter("tensp");
		
		List<sanpham> list = SearchDAO.Displayresult(request, conn, tensp);
		request.setAttribute("listsp",list);

		RequestDispatcher rd = request.getRequestDispatcher("/View/Result.jsp");
		rd.forward(request, response);
	}

}
