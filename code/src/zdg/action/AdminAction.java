package zdg.action;

import java.util.Map;

import zdg.model.AdminUser;
import zdg.service.IAdminService;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class AdminAction extends ActionSupport {
	private IAdminService adminservice;
	private AdminUser admin;

	public AdminUser getAdmin() {
		return admin;
	}

	public void setAdmin(AdminUser admin) {
		this.admin = admin;
	}

	public void setAdminservice(IAdminService adminservice) {
		this.adminservice = adminservice;
	}

	public String login() {

		AdminUser admin1 = adminservice.findAdmin(admin);
		if (admin1 != null) {
			Map session = ActionContext.getContext().getSession();
			session.put("admin", admin1);
			return SUCCESS;
		} else
			return ERROR;

	}
}
