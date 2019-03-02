package zdg.service;

import java.util.List;

import zdg.model.Goods;

public interface IGoodsService {
	public <Goods> List findAllGoods();

	public Integer addGoods(Goods goods);

	public Goods goodsDetail(Integer id);

	public boolean update(Goods goods);

	public boolean delete(Goods goods);
}
