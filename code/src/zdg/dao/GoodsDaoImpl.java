package zdg.dao;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import zdg.model.Goods;
import zdg.model.User;

public class GoodsDaoImpl extends HibernateDaoSupport implements IGoodsDao {

	// 无条件查找所有货物！
	public <Goods> List findAllGoods() {
		// TODO Auto-generated method stub
		List<User> allUser = getHibernateTemplate().find("from Goods");
		if (allUser != null)
			return allUser;
		else
			return null;
	}

	// 添加货物
	public Integer addGoods(Goods goods) {
		// TODO Auto-generated method stub
		return (Integer) getHibernateTemplate().save(goods);
	}

	@Override
	public Goods goodsDetail(Integer id) {
		// TODO Auto-generated method stub
		List list = getHibernateTemplate().find("from Goods where id=?", id);
		return (Goods) list.get(0);
	}

	public boolean update(Goods goods) {
		// TODO Auto-generated method stub

		getHibernateTemplate().saveOrUpdate(goods);
		return true;
	}

	@Override
	public boolean delete(Goods goods) {
		// TODO Auto-generated method stub
		getHibernateTemplate().delete(goods);
		return true;
	}
}
