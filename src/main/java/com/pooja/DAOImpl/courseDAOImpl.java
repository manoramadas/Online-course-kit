package com.pooja.DAOImpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.pooja.DAO.courseDAO;
import com.pooja.model.courses;


@Repository
@Transactional
public class courseDAOImpl implements courseDAO{

	@Autowired
	SessionFactory sessionFactory;
	
	@Override
	public List<courses> getall() {
		List<courses>obj=sessionFactory.getCurrentSession().createQuery("FROM courses").list();
		return obj;
	}

	@Override
	public void insert(courses p) {
		sessionFactory.getCurrentSession().save(p);
		
	}

	@Override
	public courses getbyid(int co_id) {
		return sessionFactory.getCurrentSession().get(courses.class, co_id);
	}

	@Override
	public void update(courses p) {
		sessionFactory.getCurrentSession().update(p);
		
	}

	@Override
	public void delete(courses p) {
		sessionFactory.getCurrentSession().delete(p);	
		
	}

	@Override
	public List<courses> getprobycat(String c) {
		Query q=sessionFactory.getCurrentSession().createQuery("from courses where ca_name=? ");
		q.setParameter(0, c);
		return q.list();
	}

}
