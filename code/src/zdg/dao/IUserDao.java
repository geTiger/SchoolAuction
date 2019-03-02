package zdg.dao;

import zdg.model.User;

public interface IUserDao {
	public Integer regSave(User user);

	public User findUserDetail(int id);
}
