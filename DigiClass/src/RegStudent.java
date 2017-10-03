import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class RegStudent extends HttpServlet {
	int sstatus = 0;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		PrintWriter out = resp.getWriter();
		String accesscode = req.getParameter("code");
		String fname = req.getParameter("sfname");
		String lname = req.getParameter("slname");
		String email = req.getParameter("semail");
		String sex = req.getParameter("ssex");
		String password = req.getParameter("spwd");
		Student studObj = new Student();
		studObj.setAccessCode(accesscode);
		studObj.setFirstName(fname);
		studObj.setLastName(lname);
		studObj.setEmail(email);
		studObj.setSex(sex);
		studObj.setPassword(password);
		System.out.println("Student's name:->" + fname + "" + lname + " ,accessCode:->" + accesscode + " ,email:->"
				+ email + " ,sex:->" + sex + " and Password is:->" + password);

		try {
			DatabaseOperations dbo = (DatabaseOperations) getServletContext().getAttribute("dbattr");
			sstatus = dbo.Reg_Student(studObj);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if (sstatus >= 1) {
			System.out.println("Congratulations' student is registered!!");
			req.getServletContext().getRequestDispatcher("/student.jsp").include(req, resp);
		} else {
			System.out.println("Student registration failed!!");
			out.println("<h1>Student Regostration failed!!</h1>");
		}
		out.close();
	}
}
