package com.pooja.DAO;

import java.util.List;

import com.pooja.model.customerrCart;



public interface CartDAO {

	public void addcart(customerrCart a);
	public void deletecart(customerrCart b);
	public customerrCart getcartbyid(int id);
	public void deleteallcartbymail(String mail);
	public List<customerrCart> getallcartbyuser(String mail);
	public boolean issameproduct(String email,int co_id);
	public double gettotalamount(String cartemail);
}
