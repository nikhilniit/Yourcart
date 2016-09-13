package com.nik.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.nik.model.Signup;
@Repository
public class SignupDaoImpl implements SignupDao{
@Autowired
	private SessionFactory sessionFactory;
	public void signupuser(Signup signup) {
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		session.save(signup);
		tx.commit();
		System.out.println("done");
	}

}
