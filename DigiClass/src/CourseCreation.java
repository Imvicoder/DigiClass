import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class CourseCreation extends HttpServlet {
	String emailId="";
	int status=0;
@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	HttpSession session=req.getSession(false);
	 emailId= (String )session.getAttribute("email");
	 String courseName=req.getParameter("coname");
	 String className=req.getParameter("clasname");	
	 String membershipApproval=req.getParameter("ma");
	 String instemail=emailId;
	 Course crs=new Course();
	 crs.setClassName(className);
	 crs.setCourseName(courseName);
	 crs.setInstemail(instemail);
	 crs.setMembershipApproval(membershipApproval);
	 System.out.println("faculty email id in course creation is:->"+instemail);
	 System.out.println("course name  in course creation is:->"+courseName);
	 System.out.println("class name in course creation is:->"+className);
	 System.out.println("membership appproval in  course creation is:->"+membershipApproval);
	 DatabaseOperations dbo=(DatabaseOperations)getServletContext().getAttribute("dbattr");
	 try {
		status=dbo.Reg_course(crs);
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	 if(status>0) {
		 System.out.println("Congratulation,Course created successfully!!");
	 }
	 
}
}