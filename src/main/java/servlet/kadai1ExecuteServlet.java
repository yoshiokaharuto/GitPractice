package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.Kadai1DAO;
import dto.Kadai;

/**
 * Servlet implementation class kadai1ExecuteServlet
 */
@WebServlet("/kadai1ExecuteServlet")
public class kadai1ExecuteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public kadai1ExecuteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		
	    Kadai account = (Kadai)session.getAttribute("input_data");
	    
	    int result = Kadai1DAO.registerAccount(account);
	    
	    String path = "";
	    if(result == 1) {
	    	session.removeAttribute("input_data");
	    	
	    	path = "WEB-INF/view/kadai1-success.jsp";
	    } else {
	    	 
	    	path = "WEB-INF/view/kadai1.jsp?error=1";
	    }
	    RequestDispatcher dispatcher = request.getRequestDispatcher(path);
		dispatcher.forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
