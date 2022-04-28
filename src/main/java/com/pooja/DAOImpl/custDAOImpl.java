package com.pooja.DAOImpl;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.pooja.DAO.customerDAO;
import com.pooja.model.customerr;


@Transactional
@Repository
public class custDAOImpl implements customerDAO{

	@Autowired 
	SessionFactory sessionFactory;

	@Override
	public void insert(customerr c) {
		//sessionFactory.getCurrentSession().persist(c);
				sessionFactory.getCurrentSession().save(c);
		
	}
	
	@Override
	public customerr getbyemail(String email) {
		return sessionFactory.getCurrentSession().get(customerr.class, email);
	}
	
	@Override
	public boolean isValid(String email, String pass) {
		String hql="from customerr where email='"+email+"'and password='"+pass+"'";
		if(sessionFactory.getCurrentSession().createQuery(hql).uniqueResult()==null){
	return false;
}
return true;
	}
	
}
