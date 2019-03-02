package zdg.service;

import zdg.model.User;

public interface IUserService {
	public Integer regSave(User user);

	public User findUserDetail(int id);
}
