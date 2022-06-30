package bfsl;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession; 

public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		res.setContentType("application/json");
		res.setCharacterEncoding("UTF-8");
		
		String userName=req.getParameter("userName");
		String password= req.getParameter("password");
	
		
		PrintWriter out= res.getWriter();
		Login u= new Login();
		Connection c=null;
	    
		
		 try {
			 if(u.validate(userName, password)) {
				Class.forName("com.mysql.jdbc.Driver");
				c=DriverManager.getConnection("jdbc:mysql://dev-ws.bajajfinservsecurities.in:8444/SESSION_DATABASE", "platformwrite", "bfslwrite");
				out.println("logged in successfully");
				HttpSession session=req.getSession();  
			    session.setAttribute("username",userName);  
			    session.setAttribute("password", password);
		         
			 }else {out.println("please enter the currect username and password");
				 }}
			 catch(Exception e) {			
					e.printStackTrace();
				}
				 finally{
					 try {
						 if( c!= null)
						 c.close();
					 }
					 catch(SQLException se) {
						 se.printStackTrace();			 
					 }
					 }
				 	}
				 	}

	
