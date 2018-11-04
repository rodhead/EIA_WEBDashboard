/**
 * 
 */
package org.main.eia.ajaxHandlerServiceImpl;

import org.main.eia.ajaxHandlerDAOImpl.UserFormRegistrationDaoImpl;
import org.main.eia.ajaxHandlerService.UserFormRegistration;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author misba
 *
 */
@Service
public class UserFormRegistrationImpl  implements UserFormRegistration{
	@Autowired
	UserFormRegistrationDaoImpl formDao;

	@Override
	public String signInValidation(String valUsername, String valPassword) {
		return formDao.signInValidation(valUsername, valPassword);
	}

}
