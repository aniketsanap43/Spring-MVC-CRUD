package springproducts.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import springproducts.entities.Products;

@Component
public class ProductDao {
	
	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

	@Transactional
	public void insert(Products product) {
		this.hibernateTemplate.saveOrUpdate(product);
	}
	
	public Products getProduct(int id) {
		Products product = this.hibernateTemplate.get(Products.class, id);
		return product;
	}
	
	public List<Products> getAllProducts(){
		List<Products> list= this.hibernateTemplate.loadAll(Products.class);
		return list;
	}
	@Transactional
	public void remove(int id) {
		Products p =  hibernateTemplate.load(Products.class, id);
		this.hibernateTemplate.delete(p);
	}
	
	@Transactional
	public void update(Products product) {
		this.hibernateTemplate.update(product);
	}
	
}
