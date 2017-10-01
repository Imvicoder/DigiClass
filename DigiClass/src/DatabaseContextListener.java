import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class DatabaseContextListener implements ServletContextListener {

	@Override
	public void contextDestroyed(ServletContextEvent arg0) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void contextInitialized(ServletContextEvent event) {
	System.out.println("Context start hua");
	
		ServletContext sc = event.getServletContext();
		DatabaseOperations dbo=new DatabaseOperations();
		System.out.println("object pahle is:->"+dbo);
		sc.setAttribute("dbattr", dbo);
	}

}
