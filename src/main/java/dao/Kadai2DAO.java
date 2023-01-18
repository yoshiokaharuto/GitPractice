package dao;

import java.net.URI;
import java.net.URISyntaxException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dto.Kadai;

public class Kadai2DAO {
	private static Connection getConnection() throws URISyntaxException, SQLException {
		try {
			Class.forName("org.postgresql.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	    URI dbUri = new URI(System.getenv("DATABASE_URL"));

	    String username = dbUri.getUserInfo().split(":")[0];
	    String password = dbUri.getUserInfo().split(":")[1];
	    String dbUrl = "jdbc:postgresql://" + dbUri.getHost() + ':' + dbUri.getPort() + dbUri.getPath();

	    return DriverManager.getConnection(dbUrl, username, password);
	}
	
	public static List<Kadai> selectAllAccount(){
		
		List<Kadai> result = new ArrayList<>();
		
		String sql = "SELECT name,age,gender,phone_number,mail FROM kadaiaccount ";
		
		
		try (
				Connection con = getConnection();
				PreparedStatement pstmt = con.prepareStatement(sql);
				){
			
			try (ResultSet rs = pstmt.executeQuery()){
				while(rs.next()) {
				String  name = rs.getString("name");
				int age = rs.getInt("age");
				String gender = rs.getString("gender");
				String number = rs.getString("phone_number");
				String mail = rs.getString("mail");
				
					
					Kadai account= new Kadai( -1, name,age,gender,number,mail, null, null,null);
					
					result.add(account);
				}
			}	
		} catch(SQLException e) {
			e.printStackTrace();
		} catch (URISyntaxException e) {
			e.printStackTrace();
		}
		return result;
	}

}
