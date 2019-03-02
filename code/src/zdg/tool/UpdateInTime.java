package zdg.tool;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import zdg.dao.GoodsDaoImpl;
import zdg.model.Goods;

public class UpdateInTime extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public UpdateInTime() {
		super();
	}

	/**
	 * The doPost method of the servlet. <br>
	 * 
	 * This method is called when a form has its tag value method equals to
	 * post.
	 * 
	 * @param request
	 *            the request send by the client to the server
	 * @param response
	 *            the response send by the server to the client
	 * @throws ServletException
	 *             if an error occurred
	 * @throws IOException
	 *             if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String id = request.getParameter("goodId");
		GoodsDaoImpl goodsDao = new GoodsDaoImpl();

		Goods good = new Goods();
		good = goodsDao.goodsDetail(Integer.valueOf(id));
		if (good == null) {
			response.sendRedirect("goodslist.jsp");
		} else {
			request.setAttribute("onegood", good);
			request.getRequestDispatcher("single-product.jsp").forward(request,
					response);
		}
	}

}
