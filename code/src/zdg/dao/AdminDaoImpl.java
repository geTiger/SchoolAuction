package zdg.dao;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import zdg.model.AdminUser;

public class AdminDaoImpl extends HibernateDaoSupport implements IAdminDao {

	public AdminUser findAdmin(AdminUser admin) {
		// TODO Auto-generated method stub
		String str[] = { admin.getUsername(), admin.getPassword() };
		List list = getHibernateTemplate().find(
				"from AdminUser where username=? and password=?", str);
		if (list != null)
			return (AdminUser) list.get(0);
		else
			return null;
	}

}
