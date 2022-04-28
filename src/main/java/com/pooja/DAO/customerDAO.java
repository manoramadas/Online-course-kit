package com.pooja.DAO;

import com.pooja.model.customerr;

public interface customerDAO {

	public void insert(customerr c);
	public customerr getbyemail(String email);
	public boolean isValid(String email , String pass );
	//public Customer getbillbyemail();
}
