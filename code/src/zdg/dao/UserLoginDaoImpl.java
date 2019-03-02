package zdg.dao;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import zdg.model.Userlogin;

public class UserLoginDaoImpl extends HibernateDaoSupport implements
		IUserLoginDao {

	public Userlogin findUser(Userlogin user) {
		// TODO Auto-generated method stub
		String[] str = { user.getUsername(), user.getPassword() };
		List<Userlogin> list = getHibernateTemplate().find(
				"from Userlogin where username=? and password=?", str);
		if (list != null)
			return list.get(0);
		else
			return null;
	}
}
