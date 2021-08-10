package daoImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import dao.UserDao;
import model.User;
import util.Dbconnection;

public class UserDaoImpl implements UserDao{
	private Connection conn;

	@Override
	public int login(String email, String password) {
		int count=0 ;
		try
         {
			 conn=Dbconnection.getConnection();
    		 PreparedStatement preparedStatement = null;
             String query = "select * from users where email = ? and password = ? ";
             preparedStatement = conn.prepareStatement(query); 
             preparedStatement.setString(1, email);
             preparedStatement.setString(2, password);
            
             ResultSet rs = preparedStatement.executeQuery();
             while(rs.next()){
            	 count++;
             }
         }
         catch(SQLException e)
         {
            e.printStackTrace();
         } 
		return count;
	}

	@Override
	public int register(User user) {
		int count=0 ;
		try
         {
			 conn=Dbconnection.getConnection();
    		 PreparedStatement preparedStatement = null;
             String query = "INSERT INTO users(username,email,password,roll_number,university,role) values (?,?,?,?,?,?)";
             preparedStatement = conn.prepareStatement(query); 
             preparedStatement.setString(1, user.getUsername());
             preparedStatement.setString(2, user.getEmail());
             preparedStatement.setString(3, user.getPassword());
             preparedStatement.setString(4, user.getRollNumber());
             preparedStatement.setString(5, user.getUniversity());
             preparedStatement.setString(6, user.getRole());
            
             count=preparedStatement.executeUpdate();
         }
         catch(SQLException e)
         {
            e.printStackTrace();
         } 
		return count;
	}

}
