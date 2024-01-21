

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.Student;
import com.DAO.StudentDa;
import com.DB.DbConnect;

/**
 * Servlet implementation class Update
 */
@WebServlet("/Update")
public class Update extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Update() {
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
		//doGet(request, response);
		String name = request.getParameter("name");
		String clas = request.getParameter("class");
		String roll_no = request.getParameter("rollno");
		String room_no= request.getParameter("roomno");
		String address = request.getParameter("address");
		String phone_no = request.getParameter("phone");
		String gmail=request.getParameter("gmail");
		PrintWriter out=response.getWriter();
	    int id = Integer.parseInt(request.getParameter("id"));
	   
	    Student stu=new Student(id, name,clas, roll_no, address, phone_no, gmail, room_no);
	   
	    try {
			StudentDa dao=new StudentDa(DbConnect.getCon());
			dao.updateStudent(stu);
			out.println("Data updated successfully");
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			out.println(e);
		}
	}

}
