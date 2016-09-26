package com.nik.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.nik.model.Cart;
import com.nik.model.Signup;
import com.nik.model.UserRole;
@Repository
public class SignupDaoImpl implements SignupDao{
@Autowired
	private SessionFactory sessionFactory;
	public void signupuser(Signup signup) {
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		signup.setEnabled(true);
		
		UserRole userrole=new UserRole();
		userrole.setUid(signup.getUserId());
		userrole.setAuthority("ROLE_USER");
		session.save(userrole);
		Cart cart=new Cart();
		cart.setCustomer(signup);
		signup.setCart(cart);
		session.save(signup);
		session.save(cart);
		tx.commit();
		System.out.println("done");
	}

}
