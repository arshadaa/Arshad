package com.mycompany.arshad.dao;

import com.mycompany.arshad.entities.User;
import javax.persistence.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

public class UserDao {

	// data access object
	
	private SessionFactory factory;

	public UserDao(SessionFactory factory) {
		//super();
		this.factory = factory;
	}
	
	//get user by email and password
	
	public User getUserByEmailAndPassword(String email,String password) {
		
		User user=null;
		
		try {
			
			 String query ="from User where uEmail=:a and uPassword=:b";
			 Session session = this.factory.openSession();
			 org.hibernate.Query q = session.createQuery(query);
			  q.setParameter("a", email);
			  q.setParameter("b", password); 
			
			user = (User) q.uniqueResult();
			
			
			
			session.close();
		
		}catch(Exception e) {e.printStackTrace();}
		
		System.out.println(user);
		return user;
		
		
	}
	
	

}
    

