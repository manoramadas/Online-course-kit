package com.pooja.DAOImpl;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.pooja.DAO.ShiporderDAO;
import com.pooja.model.shipOrder;

@Repository
@Transactional
public class shiporderDAOImpl implements ShiporderDAO{
	@Autowired
	SessionFactory sessionFactory;

	@Override
	public void insert(shipOrder s) {
		sessionFactory.getCurrentSession().save(s);
		
	}
	
	@Override
	public shipOrder getbyid(int id) {
		return sessionFactory.getCurrentSession().get(shipOrder.class, id);
	}
	
	@Override
	public void delete(shipOrder s) {
		sessionFactory.getCurrentSession().delete(s);
		
	}

}
