import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.security.KeyStore.ProtectionParameter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;


public class DatabaseOperations {
	private Connection conn = null;
	int fstatus = 0;
	int sstatus = 0;
    boolean loginstatus=false;
    String UserRole="";
    Faculty facObj;
    Student studObj;
    int courseRegStatus=0;
    public Faculty getFacObj() {
		return facObj;
	}

	public void setFacObj(Faculty facObj) {
		this.facObj = facObj;
	}

	public Student getStudObj() {
		return studObj;
	}

	public void setStudObj(Student studObj) {
		this.studObj = studObj;
	}
	
	public DatabaseOperations() {
		System.out.println("Constructoar called");
		Properties props = new Properties();
		try {
			props.load(new FileInputStream(
					"F:/Study/projects/J2EE Projects/DigiClass/DigiClass/src/dbconfiguration.properties"));
		}catch (IOException e) {
			e.printStackTrace();
		}
		String DbUrl = props.getProperty("dburl");
		String DbUser = props.getProperty("user");
		String DbPassword = props.getProperty("password");
		System.out.println(DbUrl+" "+DbUser+" "+DbPassword);
		try {
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			this.conn = DriverManager.getConnection(DbUrl, DbUser, DbPassword);
			System.out.println("Connection Established");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (InstantiationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		  facObj=new Faculty();
	      setFacObj(facObj);
	      studObj=new Student();
	      setStudObj(studObj);

	}

	public Connection getConnection() {
		return conn;
	}

	public int Reg_Faculty(Faculty fac) throws SQLException {
		System.out.println("RegFaculty call hua");
		System.out.println("Connection object is:->"+conn);
		PreparedStatement ps = conn.prepareStatement("insert into instructor(instemail,fname,lname,sex,password) values (?,?,?,?,?)");
		ps.setString(1, fac.getEmail());
		ps.setString(2, fac.getFirstName());
		ps.setString(3, fac.getLastName());
		ps.setString(4, fac.getSex());
		ps.setString(5, fac.getPassword());
		
		fstatus = ps.executeUpdate();
		System.out.println("Faculty Reg status is:->" + fstatus);
		// conn.close();
		return fstatus;
	}
	public int Reg_Student(Student stud) throws SQLException{
		PreparedStatement ps=conn.prepareStatement("insert into student(studemail,accesscode,fname,lname,sex,password) values(?,?,?,?,?,?)");
		ps.setString(1, stud.getEmail());
		ps.setString(2, stud.getAccessCode());
		ps.setString(3, stud.getFirstName());
		ps.setString(4, stud.getLastName());
		ps.setString(5, stud.getSex());
		ps.setString(6, stud.getPassword());
		sstatus=ps.executeUpdate();
		System.out.println("Student reg status is:->"+sstatus);
		
		return sstatus;
	}
	public int Reg_course(Course crs) throws SQLException{
		PreparedStatement ps=conn.prepareStatement("insert into courses (courseName,classname,membershipApproval,instemail) values(?,?,?,?)");
          ps.setString(1,crs.getCourseName());
          ps.setString(2, crs.getClassName());
          ps.setString(3, crs.getMembershipApproval());
          ps.setString(4, crs.getInstemail());
          
          courseRegStatus=ps.executeUpdate();
          System.out.println("Course creation status:->"+courseRegStatus);
		return courseRegStatus;
	}
	public boolean login(String username,String password) {
		try {
		PreparedStatement ps=conn.prepareStatement("Select * from student where studemail=? and password=?");
	       ps.setString(1, username);
	       ps.setString(2, password);
	       ResultSet rs= ps.executeQuery();
	       
	       PreparedStatement psf=conn.prepareStatement("Select * from instructor where instemail=? and password=?");
	       psf.setString(1, username);
	       psf.setString(2, password);
	       ResultSet rsf= psf.executeQuery();
	       while(rsf.next()) {
	    	   loginstatus=true;
		    	UserRole= rsf.getString("userRole");
		    	System.out.println("Ok, userrole fetched is:->"+UserRole);
		    	if(UserRole.equals("instructor")) {
		    		String fname=rsf.getString("fname");
		    		String lname=rsf.getString("lname");
		    		String femail=rsf.getString("instemail");
		    		System.out.println("Faculty called::fac object in DatabaseOperation is:->"+facObj+" & student object in DatabaseOperation is:->"+studObj);
		    		facObj.setuserRole(UserRole);
		    		facObj.setFirstName(fname);
		    		facObj.setLastName(lname);
		    		facObj.setEmail(femail);
		    		System.out.println("User Role is: in Databaseoperation->"+facObj.getuserRole());
		    	}
	       }
	     	      
	      
	      while(rs.next()) {
	    	  loginstatus=true;
	    	UserRole= rs.getString("userRole");
	    	System.out.println("Ok, userrole fetched is:->"+UserRole);
	    	if(UserRole.equals("student")) {
	    		String fname=rs.getString("fname");
	    		String lname=rs.getString("lname");
	    		String studemail=rs.getString("studemail");
	    		System.out.println("student called::fac object in DatabaseOperation is:->"+facObj+" & student object in DatabaseOperation is:->"+studObj);
                 studObj.setuserRole(UserRole);
                 studObj.setFirstName(fname);
                 studObj.setLastName(lname);
                 studObj.setEmail(studemail);
	    		
	    	}	    	
	      }
	      System.out.println("UserRole is:->"+UserRole);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return loginstatus;
	}
}
