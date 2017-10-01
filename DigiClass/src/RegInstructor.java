

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/helloServlet")
public class RegInstructor extends HttpServlet {
	@Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");  
        PrintWriter out = resp.getWriter();
        String Email=req.getParameter("femail");
        System.out.println("Faculty Email id is:->"+Email);
        String FirstName=req.getParameter("ffname");
        System.out.println("Faculty Firstname is:->"+FirstName);
        String LastName=req.getParameter("flname");
        System.out.println("Faculty Lastname is:->"+LastName);
        String Sex=req.getParameter("fsex");
        System.out.println("Faculty Sex is:->"+Sex);
        String Password=req.getParameter("fpwd");
        System.out.println("Faculty Password is:->"+Password);
        
        
        Faculty fac=new Faculty();
        fac.setEmail(Email);
        fac.setFirstName(FirstName);
        fac.setLastName(LastName);
        fac.setSex(Sex);
        fac.setPassword(Password);
       try{ 
        DatabaseOperations dbo = (DatabaseOperations) getServletContext().getAttribute("dbattr");
    	System.out.println("object now is:->"+dbo);
        int fstatus=dbo.Reg_Faculty(fac);
        System.out.println("Status is:->"+fstatus);
        if(fstatus>0){              
            req.getRequestDispatcher("Faculty.jsp").include(req, resp);  
        }else{  
            out.println("Sorry! unable to save record");  
        }  
       }catch(Exception ex){
           System.out.println("the exception is:->"+ex);
       }
          
        out.close(); 
    }
 }