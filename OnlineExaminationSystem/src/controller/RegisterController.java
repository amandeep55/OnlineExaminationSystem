package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UserDao;
import daoImpl.UserDaoImpl;
import model.User;

/**
 * Servlet implementation class RegisterController
 */
@WebServlet("/Register")
public class RegisterController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	UserDao dao= new UserDaoImpl();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String username=request.getParameter("username");
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		String roll=request.getParameter("roll");
		String university=request.getParameter("university");
		String role=request.getParameter("role");
		User user= new User();
		user.setUsername(username);
		user.setEmail(email);
		user.setPassword(password);
		user.setRollNumber(roll);
		user.setUniversity(university);
		user.setRole(role);
		int c=dao.register(user);
		if(c>0){
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
		else{
			request.getRequestDispatcher("register.jsp").forward(request, response);
		}
	}

}
