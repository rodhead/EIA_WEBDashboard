package org.main.eia.utility;

import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;
import org.springframework.context.annotation.Bean;

@org.springframework.context.annotation.Configuration
public class DBConnection {
	
	
	public SessionFactory getSession() {
		/*Configuration config=new Configuration().configure("hibernate-annotation.cfg.xml");
		ServiceRegistry service= new StandardServiceRegistryBuilder().applySettings(config.getProperties()).build();
		sf=config.buildSessionFactory(service);
		return sf;*/
		
		SessionFactory session = new Configuration().configure().buildSessionFactory();
		return session;
	}

}
