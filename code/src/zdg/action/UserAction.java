package zdg.action;

import java.util.Map;

import zdg.model.User;
import zdg.model.Userlogin;
import zdg.service.IUserService;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class UserAction extends ActionSupport {
	private User user;
	private IUserService userservice;
	private String hobby[];

	public String[] getHobby() {
		return hobby;
	}

	public void setHobby(String[] hobby) {
		this.hobby = hobby;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public void setUserservice(IUserService userservice) {
		this.userservice = userservice;
	}

	// 用户注册
	public String userReg() {
		System.out.println("come in aciton");
		String hobby = "";
		for (int i = 0; i < this.hobby.length; i++) {
			hobby += this.hobby[i] + ",";
		}
		user.setHobby(hobby);// 接受复选框内容

		Integer regSave = userservice.regSave(user);
		System.out.println("保存了ID为" + regSave);
		if (regSave != null)
			return SUCCESS;
		else
			return ERROR;
	}

	// 显示用户详细信息
	public String showUserDetial() {
		Map session = ActionContext.getContext().getSession();// 获取session
		Userlogin userlogin = (Userlogin) session.get("user");
		int id = userlogin.getId();
		User user = userservice.findUserDetail(id);
		if (user != null) {
			session.put("user", user);
			return SUCCESS;
		} else
			return ERROR;
	}
}
