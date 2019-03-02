package zdg.action;

import java.sql.Timestamp;
import java.util.List;
import java.util.Map;

import zdg.model.AdminUser;
import zdg.model.Goods;
import zdg.model.Userlogin;
import zdg.service.IGoodsService;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class GoodsAction extends ActionSupport {
	private Goods goods;
	private IGoodsService goodsservice;
	private String type[];
	private static Integer NO_ONE_UPDATE = 0;
	private String inputPrice;
	private Integer deleteGoodsId;

	public Integer getDeleteGoodsId() {
		return deleteGoodsId;
	}

	public void setDeleteGoodsId(Integer deleteGoodsId) {
		this.deleteGoodsId = deleteGoodsId;
	}

	public String getInputPrice() {
		return inputPrice;
	}

	public void setInputPrice(String inputPrice) {
		this.inputPrice = inputPrice;
	}

	public String[] getType() {
		return type;
	}

	public void setType(String[] type) {
		this.type = type;
	}

	public static Integer getNO_ONE_UPDATE() {
		return NO_ONE_UPDATE;
	}

	public static void setNO_ONE_UPDATE(Integer nO_ONE_UPDATE) {
		NO_ONE_UPDATE = nO_ONE_UPDATE;
	}

	public Goods getGoods() {
		return goods;
	}

	public void setGoods(Goods goods) {
		this.goods = goods;
	}

	public void setGoodsservice(IGoodsService goodsservice) {
		this.goodsservice = goodsservice;
	}

	// 货物上架
	public String putOn() {
		// 设置上架时间，上次更新时间、上架人、当前价格以及flag
		goods.setType(type[0]);
		Timestamp inputTime = new Timestamp(System.currentTimeMillis());
		goods.setInputTime(inputTime);
		goods.setUpdateTime(inputTime);
		Map session = ActionContext.getContext().getSession();
		Userlogin user = (Userlogin) session.get("user");// 此处 user为登录表对象
		goods.setInputPrice(Double.valueOf(this.inputPrice));
		goods.setUpdatePrice(goods.getInputPrice());
		goods.setInputUser(user.getId());

		goods.setFlag(NO_ONE_UPDATE);

		// 保存对象
		int id = goodsservice.addGoods(goods);
		if (id > 0)
			return SUCCESS;
		else
			return ERROR;
	}

	// 获取货物列表
	public String getAllGoods() {
		List<Goods> goodsList = goodsservice.findAllGoods();

		if (goodsList != null) {
			Map request = (Map) ActionContext.getContext().get("request");
			request.put("goodsList", goodsList);
			Map session = (Map) ActionContext.getContext().getSession();
			AdminUser admin = (AdminUser) session.get("admin");
			if (admin != null)
				return "backAdmin";
			else
				return SUCCESS;
		} else
			return ERROR;
	}

	// 获取一个货物的详情
	public String goodsDetail() {
		Integer id = goods.getId();
		System.out.println("你要看的详情id为" + id);
		Goods goods = goodsservice.goodsDetail(id);
		if (goods != null) {
			Map session = (Map) ActionContext.getContext().getSession();
			session.put("onegood", goods);
			return SUCCESS;
		} else
			return ERROR;
	}

	// ajax 刷新当前最新价格
	public String updateInTime() {
		Integer id = goods.getId();
		Goods goods = goodsservice.goodsDetail(id);
		if (goods != null) {
			Map request = (Map) ActionContext.getContext().get("request");
			request.put("onegood", goods);
			return SUCCESS;
		} else
			return ERROR;
	}

	// 用户出价
	public String offerPrice() {
		Map session = (Map) ActionContext.getContext().getSession();
		Goods goods = (Goods) session.get("onegood");
		Userlogin user = (Userlogin) session.get("user");
		System.out.println("输入的价格为：" + Double.valueOf(this.getInputPrice())
				+ "保留价为" + goods.getReservePice());
		if (Double.valueOf(this.getInputPrice()) < goods.getReservePice()) {
			System.out.println("输入价格比保留价小了！");
			goods.setUpdatePeople(user.getUsername());
			goods.setUpdatePrice(Double.valueOf(this.getInputPrice()));
			goodsservice.update(goods);
			return SUCCESS;

		} else {
			return ERROR;
		}

	}

	public String deleteGoods() {
		Goods goods = goodsservice.goodsDetail(this.deleteGoodsId);
		if (goodsservice.delete(goods))
			return SUCCESS;
		else
			return ERROR;
	}
}
