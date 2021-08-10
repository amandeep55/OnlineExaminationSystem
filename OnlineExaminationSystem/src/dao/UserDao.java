package dao;

import model.User;

public interface UserDao {
	public int login(String email, String password);
	public int register(User user);

}
