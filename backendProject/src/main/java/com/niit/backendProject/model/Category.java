package com.niit.backendProject.model;

import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
@Entity
public class Category {
	@Id
	String CatId;
	@OneToMany(mappedBy="category",fetch=FetchType.EAGER)
	Set<Product>product;
	
	private String Cname;
	private String Cdescp;
	public String getCatId() {
		return CatId;
	}
	public void setCatId(String catId) {
		this.CatId = catId;
	}
	public Set<Product> getProduct() {
		return product;
	}
	public void setProduct(Set<Product> product) {
		this.product = product;
	}
	public String getCname() {
		return Cname;
	}
	public void setCname(String cname) {
		Cname = cname;
	}
	public String getCdescp() {
		return Cdescp;
	}
	public void setCdescp(String cdescp) {
		Cdescp = cdescp;
	}
}
