package libarary_management_pack;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class adminLogin2
 */
@WebServlet("/adminLogin2")
public class adminLogin2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public adminLogin2() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		response.setContentType(("text/html"));
		PrintWriter pw = response.getWriter();
		
	
		String email=request.getParameter("email1");
		String password=request.getParameter("pass1");
		try
		{

			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/library_db","root","");
			PreparedStatement ps=con.prepareStatement("select * from admin_login where email='"+email+"' and password='"+password+"'");
			
			

			ResultSet rs=ps.executeQuery();
			
			if(email.equals("admin123@gmail.com")&&password.equals("admin@123"))
			{
				HttpSession session=request.getSession();
				session.setAttribute("admin", email);
				
				request.getRequestDispatcher("adminSection.jsp").include(request, response);
			}
			else
			{
				request.getRequestDispatcher("index.jsp").include(request, response);
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}

}
