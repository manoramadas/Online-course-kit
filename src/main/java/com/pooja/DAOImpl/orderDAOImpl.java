package com.pooja.DAOImpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


import com.pooja.DAO.OrderDAO;
import com.pooja.model.courseorder;


@Repository
@Transactional
public class orderDAOImpl implements OrderDAO{

	@Autowired
	SessionFactory sessionFactory;

	@Override
	public void insert(courseorder o) {
		sessionFactory.getCurrentSession().save(o);
		
	}

	@Override
	public courseorder getbymail(String mail) {
		return sessionFactory.getCurrentSession().get(courseorder.class, mail);
	}

	@Override
	public List<courseorder> getall() {
		return sessionFactory.getCurrentSession().createQuery("from courseorder").list();
	}

	@Override
	public courseorder getbyid(int oid) {
		
		return sessionFactory.getCurrentSession().get(courseorder.class, oid);
	}

}
