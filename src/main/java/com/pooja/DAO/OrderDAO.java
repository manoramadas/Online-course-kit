package com.pooja.DAO;

import java.util.List;

import com.pooja.model.courseorder;


public interface OrderDAO {

	public void insert(courseorder o);
	public courseorder getbymail(String mail);
	public courseorder getbyid(int oid);
	public List<courseorder> getall();
}
