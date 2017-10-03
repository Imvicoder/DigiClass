import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginSystem extends HttpServlet {
	boolean loginstatus=false;
	 String username="";
	 String emailId="";
	 String userRole="";
	 Faculty fac;
	 Student stud;
@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	String emailId=req.getParameter("lemail");
	String pwd=req.getParameter("lpwd");
	System.out.println("Email Id for Login is:->"+emailId);
	System.out.println("Password for login is:->"+pwd);
	
	
	try{
		DatabaseOperations dbo=(DatabaseOperations)req.getServletContext().getAttribute("dbattr");
		//System.out.println("Checkkkk:->"+dbo.getFacObj());
		stud=dbo.getStudObj();
		fac=dbo.getFacObj();		
		loginstatus=dbo.login(emailId, pwd);
		System.out.println("fac object in LoginSystem is:->"+fac+" & student object in LoginSystem is:->"+stud);
		System.out.println("For student User Role is: in login system->"+stud.getuserRole());
		System.out.println("For faculty User Role is: in login system->"+fac.getuserRole());
		System.out.println("Now Login status:->"+loginstatus);
		if(stud.getuserRole()!=null && stud.getuserRole().equals("student")) {
			userRole="student";
			username=stud.getFirstName()+" "+stud.getLastName();
			emailId=stud.getEmail();
			System.out.println("User NAme is:->"+username);
		}else if(fac.getuserRole().equals("instructor")) {
			userRole="instructor";
			username=fac.getFirstName()+" "+fac.getLastName();
			emailId=fac.getEmail();
		}
		if(loginstatus) {
			System.out.println("Login Success!!");
			HttpSession session=req.getSession();
			System.out.println("SEssion creation time is:->"+session.getCreationTime());
			System.out.println("finally usertole is:->"+userRole);
			if(userRole.equals("instructor")) {
				getServletContext().getRequestDispatcher("/Faculty.jsp").include(req, resp);
				
			}else if(userRole.equals("student")) {
				//getServletContext().getRequestDispatcher("/student.jsp").include(req, resp);
				resp.sendRedirect("./student.jsp");
				
			}
			session.setAttribute("username", username);
			session.setAttribute("userRole", userRole);
			session.setAttribute("email", emailId);
			System.out.println("Hey username : "+session.getAttribute("username"));
			System.out.println("Hey userRole : "+session.getAttribute("userRole"));
			System.out.println("Hey useremail : "+session.getAttribute("email"));
		}else {
			System.out.println("Login failed!!");
		}
			
	}catch(Exception e) {
		System.out.println("Exception is:->"+e);
		e.printStackTrace();
	}
	
	
	
	
}
}
