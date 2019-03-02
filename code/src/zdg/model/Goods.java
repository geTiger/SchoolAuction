package zdg.model;

import java.sql.Timestamp;

/**
 * Goods entity. @author MyEclipse Persistence Tools
 */

public class Goods implements java.io.Serializable {

	// Fields

	private Integer id; // id 自增
	private String name;// 物品名字
	private String type;// 物品类型
	private Double inputPrice;// 初始价格
	private Timestamp inputTime;// 上架时间
	private Integer inputUser;// 上架用户id
	private Double updatePrice;// 当前竞拍价格
	private Timestamp updateTime;// 上次更新价格时间
	private String updatePeople;// 当前持有最高价格用户
	private String goodsRemark;// 物品备注
	private Integer flag;// 标志，0 可以竞拍无人出价，
							// 1 可以竞拍，有人出价
							// 2 拍卖扩展期
							// 3 拍卖完成
	private Integer sumTime;// 上架总时间
	private String goodsImage;// 物品图片
	private Double reservePice;// 保留价

	// Constructors

	/** default constructor */
	public Goods() {
	}

	/** full constructor */
	public Goods(String name, String type, Double inputPrice,
			Timestamp inputTime, Integer inputUser, Double updatePrice,
			Timestamp updateTime, String updatePeople, String goodsRemark,
			Integer flag, Integer sumTime, String goodsImage, Double reservePice) {
		this.name = name;
		this.type = type;
		this.inputPrice = inputPrice;
		this.inputTime = inputTime;
		this.inputUser = inputUser;
		this.updatePrice = updatePrice;
		this.updateTime = updateTime;
		this.updatePeople = updatePeople;
		this.goodsRemark = goodsRemark;
		this.flag = flag;
		this.sumTime = sumTime;
		this.goodsImage = goodsImage;
		this.reservePice = reservePice;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getType() {
		return this.type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public Double getInputPrice() {
		return this.inputPrice;
	}

	public void setInputPrice(Double inputPrice) {
		this.inputPrice = inputPrice;
	}

	public Timestamp getInputTime() {
		return this.inputTime;
	}

	public void setInputTime(Timestamp inputTime) {
		this.inputTime = inputTime;
	}

	public Integer getInputUser() {
		return this.inputUser;
	}

	public void setInputUser(Integer inputUser) {
		this.inputUser = inputUser;
	}

	public Double getUpdatePrice() {
		return this.updatePrice;
	}

	public void setUpdatePrice(Double updatePrice) {
		this.updatePrice = updatePrice;
	}

	public Timestamp getUpdateTime() {
		return this.updateTime;
	}

	public void setUpdateTime(Timestamp updateTime) {
		this.updateTime = updateTime;
	}

	public String getUpdatePeople() {
		return this.updatePeople;
	}

	public void setUpdatePeople(String updatePeople) {
		this.updatePeople = updatePeople;
	}

	public String getGoodsRemark() {
		return this.goodsRemark;
	}

	public void setGoodsRemark(String goodsRemark) {
		this.goodsRemark = goodsRemark;
	}

	public Integer getFlag() {
		return this.flag;
	}

	public void setFlag(Integer flag) {
		this.flag = flag;
	}

	public Integer getSumTime() {
		return this.sumTime;
	}

	public void setSumTime(Integer sumTime) {
		this.sumTime = sumTime;
	}

	public String getGoodsImage() {
		return this.goodsImage;
	}

	public void setGoodsImage(String goodsImage) {
		this.goodsImage = goodsImage;
	}

	public Double getReservePice() {
		return this.reservePice;
	}

	public void setReservePice(Double reservePice) {
		this.reservePice = reservePice;
	}

}