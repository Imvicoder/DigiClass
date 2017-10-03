import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Logout extends HttpServlet {
	 Faculty fac;
	 Student stud;
  @Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	  DatabaseOperations dbo=(DatabaseOperations)req.getServletContext().getAttribute("dbattr");

		stud=dbo.getStudObj();
		fac=dbo.getFacObj();		
		System.out.println("fac object in logout is:->"+fac+" & student object in LoginSystem is:->"+stud);
	HttpSession session=req.getSession(false);
	System.out.println("Before destrying session id is:->"+session.getId());
	session.invalidate();	
	fac.setuserRole(null);
	stud.setuserRole(null);
	System.out.println("after destrying session id is:->"+session.getId());
	getServletContext().getRequestDispatcher("/Home.jsp").include(req, resp);
	System.out.println("logout Successful!!");
	
	
}
}
