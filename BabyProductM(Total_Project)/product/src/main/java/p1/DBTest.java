package p1;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Connection conn = null;
		try {
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/credentials?autoReconnect=true&useSSL=false","root","root");
		if(conn!= null)
			System.out.println("Connection successfull");
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
