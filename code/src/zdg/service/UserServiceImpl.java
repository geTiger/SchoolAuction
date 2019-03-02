package zdg.service;

import java.sql.Timestamp;

import zdg.dao.IUserDao;
import zdg.model.User;

public class UserServiceImpl implements IUserService {
	private IUserDao userdao;

	public void setUserdao(IUserDao userdao) {
		this.userdao = userdao;
	}

	public Integer regSave(User user) {
		// TODO Auto-generated method stub
		int initialMoneyValue = 1000;
		user.setYiMoney(initialMoneyValue);

		// 添加注册时间
		Timestamp regTime = new Timestamp(System.currentTimeMillis());
		user.setRegTime(regTime);
		return userdao.regSave(user);
	}

	public User findUserDetail(int id) {
		// TODO Auto-generated method stub
		User user = findUserDetail(id);
		if (user != null)
			return null;
		else
			return null;
	}

}
