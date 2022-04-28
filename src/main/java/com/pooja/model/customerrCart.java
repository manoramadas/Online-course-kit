package com.pooja.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.hibernate.annotations.GenericGenerator;

@Entity
public class customerrCart {

	@Id
	@GeneratedValue(strategy= GenerationType.AUTO,generator="native")
	@GenericGenerator(name = "native",strategy = "native")
private int cartid;
private int courseid;
private String cartemail;
private String coursename;
private double courseprice;
private double totalprice;
private double grandtotal;

public int getCartid() {
	return cartid;
}
public void setCartid(int cartid) {
	this.cartid = cartid;
}
public int getCourseid() {
	return courseid;
}
public void setCourseid(int courseid) {
	this.courseid = courseid;
}
public String getCartemail() {
	return cartemail;
}
public void setCartemail(String cartemail) {
	this.cartemail = cartemail;
}
public String getCoursename() {
	return coursename;
}
public void setCoursename(String coursename) {
	this.coursename = coursename;
}
public double getCourseprice() {
	return courseprice;
}
public void setCourseprice(double courseprice) {
	this.courseprice = courseprice;
}
public double getTotalprice() {
	return totalprice;
}
public void setTotalprice(double totalprice) {
	this.totalprice = totalprice;
}
public double getGrandtotal() {
	return grandtotal;
}
public void setGrandtotal(double grandtotal) {
	this.grandtotal = grandtotal;
}
}
