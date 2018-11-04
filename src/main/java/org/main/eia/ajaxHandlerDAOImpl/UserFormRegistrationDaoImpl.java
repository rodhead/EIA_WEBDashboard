/**
 * 
 */
package org.main.eia.ajaxHandlerDAOImpl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.main.eia.ajaxHandlerDAO.UserFormRegistrationDao;
import org.main.eia.model.User;
import org.main.eia.utility.DBConnection;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Component;

/**
 * @author misba
 *
 */
@Configuration
public class UserFormRegistrationDaoImpl implements UserFormRegistrationDao {
	
	
	@Autowired
	DBConnection db;
	
	private Session session;
	
	protected Session getCurrentSession() {
		SessionFactory sf;
		sf=db.getSession();
		return sf.getCurrentSession();
	}

	@Override
	public String signInValidation(String valUserName, String valPassword) {
		boolean flagCheck=false;
		session=getCurrentSession();
		session.beginTransaction();
		String response = null;
		List<User> list = new ArrayList<User>();
		Query query = session.createQuery("from User");
		
			list=query.list();
			for(User us:list) {
				if(flagCheck==false) {
				if(us.getuName().equals(valUserName) && us.getPassword().equals(valPassword)) {
					response="success";
					flagCheck=true;
				}
				else {
					response="fail";
				}
				}
			}
			
			return response;
	}

}
