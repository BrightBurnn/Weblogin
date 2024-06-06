package com.company.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;


@WebServlet("/login")
public class Loginservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	  private static userDao userDao = new userDaoImpl();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Loginservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  String email = request.getParameter("email");
	      String password = request.getParameter("password");
	      
	      System.out.println(email);
	      if (userDao.isvaliduser(email, password)) {
	         HttpSession session = request.getSession();
	         session.setAttribute("name", email);
	         response.sendRedirect("welcome.jsp");
	      } else {
	         response.sendRedirect("loginpage.jsp?error=1");
	         
	      }
	}

}
