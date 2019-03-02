package zdg.dao;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import zdg.model.User;
import zdg.model.Userlogin;

public class UserDaoImpl extends HibernateDaoSupport implements IUserDao {

	/*
	 * 
	 * */
	public Integer regSave(User user) {
		// TODO Auto-generated method stub
		Userlogin userlogin = new Userlogin();
		// 设置相互关联
		userlogin.setUser(user);
		user.setUserlogin(userlogin);

		return (Integer) getHibernateTemplate().save(user);
	}

	public User findUserDetail(int id) {
		// TODO Auto-generated method stub
		List<User> list = getHibernateTemplate().find("from User where id=?",
				id);
		if (list != null)
			return list.get(0);
		else
			return null;
	}
}
