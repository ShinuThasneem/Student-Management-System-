package project;
import java.sql.*;
public class connectionProvider {
public static  Connection getcon() {
	
	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/student","Shinu","shinu@2004");
		return con;
	}
	catch(Exception e) {
		System.out.println(e);
		return null;
	}
}	
}
