package zdg.service;

import java.util.List;

import zdg.dao.IGoodsDao;
import zdg.model.Goods;

public class GoodsServiceImpl implements IGoodsService {
	private IGoodsDao goodsdao;

	public void setGoodsdao(IGoodsDao goodsdao) {
		this.goodsdao = goodsdao;
	}

	public <Goods> List findAllGoods() {
		// TODO Auto-generated method stub
		return goodsdao.findAllGoods();
	}

	public Integer addGoods(Goods goods) {
		// TODO Auto-generated method stub
		return goodsdao.addGoods(goods);

	}

	public Goods goodsDetail(Integer id) {
		// TODO Auto-generated method stub
		Goods goods = goodsdao.goodsDetail(id);
		if (goods != null)
			return goods;
		else
			return null;
	}

	public boolean update(Goods goods) {
		// TODO Auto-generated method stub
		return goodsdao.update(goods);
	}

	@Override
	public boolean delete(Goods goods) {
		// TODO Auto-generated method stub

		return goodsdao.delete(goods);
	}

}
