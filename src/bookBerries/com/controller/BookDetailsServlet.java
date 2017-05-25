package bookBerries.com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bookBerries.com.bean.ProductBean;
import bookBerries.com.dao.ProductDAO;



public class BookDetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		
		String productId = request.getParameter("productId");
		ProductBean productBean = new ProductDAO().bookDetails(productId);
		if(productBean!=null){
				request.setAttribute("productBean", productBean);
				request.getRequestDispatcher("bookDetails.jsp").forward(request, response);
		}else{
				response.sendRedirect("login.jsp");
		}

		
	}

}
