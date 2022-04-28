package com.pooja.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Transient;
import javax.transaction.Transactional;

import org.hibernate.annotations.GenericGenerator;
import org.springframework.web.multipart.MultipartFile;

@Entity
@Transactional
public class courses {
	
	@Id	
	//@GeneratedValue(strategy=GenerationType.IDENTITY)
	@GeneratedValue(strategy= GenerationType.AUTO,generator="native")
	@GenericGenerator(name = "native",strategy = "native")
	private int co_id;
	private int ca_id;
	private String co_name;	
	private double co_price;
	private String co_desc;
	private String ca_name;
	private String co_parts;
	@Transient
	MultipartFile file;
	private String myurl;
	
	
	public int getCo_id() {
		return co_id;
	}
	public void setCo_id(int co_id) {
		this.co_id = co_id;
	}
	public int getCa_id() {
		return ca_id;
	}
	public void setCa_id(int ca_id) {
		this.ca_id = ca_id;
	}
	public String getCo_name() {
		return co_name;
	}
	public void setCo_name(String co_name) {
		this.co_name = co_name;
	}
	public double getCo_price() {
		return co_price;
	}
	public void setCo_price(double co_price) {
		this.co_price = co_price;
	}
	public String getCo_desc() {
		return co_desc;
	}
	public void setCo_desc(String co_desc) {
		this.co_desc = co_desc;
	}
	public String getCa_name() {
		return ca_name;
	}
	public void setCa_name(String ca_name) {
		this.ca_name = ca_name;
	}
	public MultipartFile getFile() {
		return file;
	}
	public void setFile(MultipartFile file) {
		this.file = file;
	}
	public String getMyurl() {
		return myurl;
	}
	public void setMyurl(String myurl) {
		this.myurl = myurl;
	}
	public String getCo_parts() {
		return co_parts;
	}
	public void setCo_parts(String co_parts) {
		this.co_parts = co_parts;
	}
}
