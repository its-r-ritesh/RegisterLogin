package com.sterling.registerlogin;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Register")
public class Register extends HttpServlet {

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		String name = req.getParameter("name1");
		String email = req.getParameter("email1");
		String pass = req.getParameter("password1");
		
		PrintWriter out = resp.getWriter();
		Connection con  = null;
		PreparedStatement ps = null;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/registerlogin","root","root");
			ps=con.prepareStatement("INSERT INTO register VALUES(?,?,?)");
			
			ps.setString(1, name);
			ps.setString(2, email);
			ps.setString(3, pass);
			
			int count = ps.executeUpdate();
			
			if(count>0){
				resp.setContentType("text/html");
				out.println("<h3 style='color:green' >User Registered SucessFully.</h3>");
				RequestDispatcher rd = req.getRequestDispatcher("/login.jsp");
				rd.include(req, resp);
			}
			else {
				resp.setContentType("text/html");
				out.println("<h3 style='color:red' >User Not Registered due to some error.</h3>");
				RequestDispatcher rd = req.getRequestDispatcher("/register.jsp");
				rd.include(req, resp);
			}
			
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		finally {
			try {
				ps.close();
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
		}
	}
}
