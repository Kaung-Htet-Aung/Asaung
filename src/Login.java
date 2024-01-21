package registration;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uname= request.getParameter("username");
		String pass= request.getParameter("password");
		HttpSession hs= request.getSession();
		RequestDispatcher dis= null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/ulogin?useSSL=false","root","root");
			PreparedStatement pst= con.prepareStatement("select * from users where uname = ? and upwd = ?");
			pst.setString(1, uname);
			pst.setString(2, pass);
			
			ResultSet rst= pst.executeQuery();
			if(rst.next()) {
				hs.setAttribute("name", uname);
				dis= request.getRequestDispatcher("index.jsp");
			}
			else {
				dis= request.getRequestDispatcher("login.jsp");
			}
			dis.forward(request, response);
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
