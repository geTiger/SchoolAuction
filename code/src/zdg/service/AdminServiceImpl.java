package zdg.service;

import zdg.dao.IAdminDao;
import zdg.model.AdminUser;

public class AdminServiceImpl implements IAdminService {
	private IAdminDao admindao;

	public void setAdmindao(IAdminDao admindao) {
		this.admindao = admindao;
	}

	@Override
	public AdminUser findAdmin(AdminUser admin) {
		// TODO Auto-generated method stub
		return admindao.findAdmin(admin);
	}
}
