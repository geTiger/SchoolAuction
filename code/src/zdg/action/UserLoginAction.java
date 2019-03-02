package zdg.action;

import zdg.model.Userlogin;
import zdg.service.IUserLoginService;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class UserLoginAction extends ActionSupport {
	private Userlogin user;
	private IUserLoginService loginservice;

	public Userlogin getUser() {
		return user;
	}

	public void setUser(Userlogin user) {
		this.user = user;
	}

	public void setLoginservice(IUserLoginService loginservice) {
		this.loginservice = loginservice;
	}

	public String findUser() {
		Userlogin findUser = loginservice.findUser(user);
		if (findUser != null) {
			ActionContext.getContext().getSession().put("user", findUser);
			System.out.println("登录成功了！");
			return SUCCESS;
		} else {
			String usererror = "密码错误";
			ActionContext.getContext().getSession().put("usererror", usererror);
			return ERROR;
		}

	}
}
