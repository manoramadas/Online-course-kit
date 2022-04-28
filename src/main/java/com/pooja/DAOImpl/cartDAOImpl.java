package com.pooja.DAOImpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.pooja.DAO.CartDAO;
import com.pooja.model.customerrCart;

@Repository
@Transactional
public class cartDAOImpl implements CartDAO {

	@Autowired
	SessionFactory sessionFactory;
	
	@Override
	public void addcart(customerrCart a) {
		sessionFactory.getCurrentSession().save(a);
		
	}
	@Override
	public void deletecart(customerrCart b) {
		sessionFactory.getCurrentSession().delete(b);	
		
	}
	@Override
	public customerrCart getcartbyid(int id) {
		return sessionFactory.getCurrentSession().get(customerrCart.class, id);
	}
	@Override
	public void deleteallcartbymail(String mail) {
		List<customerrCart>o=getallcartbyuser(mail);
		for(customerrCart o2:o){
		sessionFactory.getCurrentSession().delete(o2);
		}
		
	}
	@Override
	public List<customerrCart> getallcartbyuser(String mail) {
		List<customerrCart> obj=sessionFactory.getCurrentSession().createQuery("from customerrCart where cartemail='"+mail+"'").list();
		return obj;
	}
	@Override
	public boolean issameproduct(String email, int co_id) {
		List<customerrCart> obj=sessionFactory.getCurrentSession().createQuery("from customerrCart where cartemail='"+email+"'and courseid='"+co_id+"'").list();
		int i=0;
		for(customerrCart c:obj){
			if(c.getCourseid()==co_id){
				i++;
			}
		}
		if(i==0){
			return false;
		}
		else{
			return true;
		}

	}

	@Override
	public double gettotalamount(String cartemail) {
String hql="select sum(courseprice) from customerrCart where cartemail="+"'"+cartemail+"'";
		
		Query query=sessionFactory.getCurrentSession().createQuery(hql);
		double sum=(double) query.uniqueResult();
		
		return sum;
	}

}
