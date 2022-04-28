package com.pooja.DAO;

import java.util.List;

import com.pooja.model.courses;


public interface courseDAO {

	public List<courses> getall();
	public void insert(courses p);
	public courses getbyid(int co_id);
	public void update(courses p);
	public void delete(courses p);
	public List<courses> getprobycat(String c);

}
