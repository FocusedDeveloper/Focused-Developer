package com.focuseddeveloper.login;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.focuseddeveloper.beans.Users;
import com.focuseddeveloper.database.DB_UserData;
import com.focuseddeveloper.servedata.FetchUsersAndPosts;
import com.focuseddeveloper.service.Email_UserData;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
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
		
		
		FetchUsersAndPosts fetchUsers;
		ArrayList<Users> userList = new ArrayList<Users>();
		
		fetchUsers = new FetchUsersAndPosts();
		userList = (ArrayList) fetchUsers.getUsers();
		
		String userEmail = request.getParameter("email");
		String userPassword = request.getParameter("password");
		
		if(validateUserLogin(userEmail, userPassword, userList)) {
			System.out.println("login success!");
			HttpSession session = request.getSession();
			session.setAttribute("userEmail", userEmail);
			session.setAttribute("userName", "Charles");
			response.sendRedirect("index.jsp");
		}else {
			//todo login failed
			response.sendRedirect("login.jsp");
		}
	}

	private boolean validateUserLogin(String currentEmail, String currentPassword, ArrayList<Users> userList) {
		// TODO Auto-generated method stub
		for(Users user: userList) {
			if( user.getEmail().equals(currentEmail ) ) {
				if( user.getPassword().equals(currentPassword ) ) {
					return true;
				}else {
					return false;
				}
			}
		}
		return false;
	}
		

}
