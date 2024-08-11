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

/**
 * Servlet implementation class librarianLogin2
 */
@WebServlet("/librarianLogin2")
public class librarianLogin2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public librarianLogin2() {
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
		
	
		String Name=request.getParameter("name");
		String Password=request.getParameter("password");
		
try {
			
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/library_db","root","");
			PreparedStatement ps=con.prepareStatement("select * from e_librarian where name='"+Name+"' and password='"+Password+"'");
			
			

			ResultSet rs=ps.executeQuery();
			
			 while(rs.next())
			 {
				 if(rs.getString("password").equals(Password)&&rs.getString("name").equals(Name)) 
					{ 
					   request.getRequestDispatcher("librarianSection.jsp").include(request, response); 
					} 
				else{
					   pw.println("Invalid password or username.");
				    }
			 }
			
		
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}

}
