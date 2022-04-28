package com.pooja.DAO;

import com.pooja.model.shipOrder;

public interface ShiporderDAO {

	public void insert(shipOrder s);
	public shipOrder getbyid(int id);
	public void delete(shipOrder s);
}
