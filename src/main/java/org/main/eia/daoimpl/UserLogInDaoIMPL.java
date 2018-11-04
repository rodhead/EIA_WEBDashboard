package org.main.eia.daoimpl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.main.eia.dao.UserLoginDao;
import org.main.eia.model.User;
import org.springframework.stereotype.Component;

@Component
public class UserLogInDaoIMPL implements UserLoginDao {

	private SessionFactory session=null;
	

	public SessionFactory getSession() {
		/*Configuration config=new Configuration().configure("hibernate.cfg.xml");
		StandardServiceRegistryBuilder builder=new StandardServiceRegistryBuilder().applySettings(config.getProperties());
		session=config.buildSessionFactory(builder.build());*/
		SessionFactory session = new Configuration().configure().buildSessionFactory();
		return session;
	}
	
	@Override
	public String userCreate(User user) {
		Session session=(Session) getSession().openSession();
		session.beginTransaction();
		session.save(user);
		session.getTransaction().commit();
		session.close();
		System.out.println("successfully created");
		return "success";
	}

	public User getUserLogInDetails(String name) {
		User userDetails=new User();
		List<User> uselrist=new ArrayList<User>();
		Session session=(Session) getSession().openSession();
		Query query= session.createQuery("from User where uName='"+name+"'");
		uselrist=query.list();
		
		return uselrist.get(0);
	}
	

}
