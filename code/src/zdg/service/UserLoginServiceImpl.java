package zdg.service;

import zdg.dao.IUserLoginDao;
import zdg.model.Userlogin;

public class UserLoginServiceImpl implements IUserLoginService {
	private IUserLoginDao logindao;

	public void setLogindao(IUserLoginDao logindao) {
		this.logindao = logindao;
	}

	@Override
	public Userlogin findUser(Userlogin user) {
		// TODO Auto-generated method stub
		Userlogin find = logindao.findUser(user);
		if (find != null)
			return find;
		else
			return null;
	}

}
