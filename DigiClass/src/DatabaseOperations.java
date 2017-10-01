import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.*;


public class DatabaseOperations {
	private Connection conn = null;
	int fstatus = 0;
	int sstatus = 0;

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
	}

	public Connection getConnection() {
		return conn;
	}

	public int Reg_Faculty(Faculty fac) throws SQLException {
		System.out.println("RegFaculty call hua");
		System.out.println("Connection object is:->"+conn);
		PreparedStatement ps = conn.prepareStatement("insert into instructor(email,fname,lname,sex,password) values (?,?,?,?,?)");
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
}
