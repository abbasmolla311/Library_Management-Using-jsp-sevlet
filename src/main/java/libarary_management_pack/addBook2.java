package libarary_management_pack;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



/**
 * Servlet implementation class addBook2
 */
@WebServlet("/addBook2")
public class addBook2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addBook2() {
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
		
		String Callno=request.getParameter("callno");
		String Name=request.getParameter("name");
		String Author=request.getParameter("author");
		String Publisher=request.getParameter("publisher");
		int Quantity=Integer.parseInt(request.getParameter("quantity"));
		int Issued=Integer.parseInt(request.getParameter("issued"));
		String Added_date=request.getParameter("added_date");
		try
		{
		    Class.forName("com.mysql.jdbc.Driver");
		    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/library_db","root","");
		    PreparedStatement ps=con.prepareStatement("insert into e_book values(?,?,?,?,?,?,?)");
			ps.setString(1, Callno);
			ps.setString(2, Name);
			ps.setString(3, Author);
			ps.setString(4, Publisher);
			ps.setInt(5, Quantity);
			ps.setInt(6, Issued);
			ps.setString(7, Added_date);
			
			int count=ps.executeUpdate();
			
			if(count>0)
			{
				
				//pw.print("Book Added successfully");
				response.sendRedirect("addBookSuccessProfile.jsp");
			}
			else
			{
				
				pw.print("Book not added");
				
				
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
			
		}
		
	}

}
