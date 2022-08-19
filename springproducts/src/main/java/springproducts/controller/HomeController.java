package springproducts.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import springproducts.dao.ProductDao;
import springproducts.entities.Products;

@Controller
public class HomeController {
	
	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	@Autowired
	private ProductDao productDao;
	
	@RequestMapping("/path")
	public String path(Model m){
		List<Products> list = productDao.getAllProducts();
		m.addAttribute("ProductList", list);
		return "all_products";
	}
	
	@RequestMapping("/openForm")
	public String addProductForm(){
		return "add_product_form";
	}
	
	@RequestMapping(path = "/add_product", method=RequestMethod.POST)
	public RedirectView addProduct(@ModelAttribute Products product, 
			HttpServletRequest req ){
		System.out.println("Adding Product...");
		productDao.insert(product);
		RedirectView view = new RedirectView();
		view.setUrl(req.getContextPath() + "/");
		return view;
	}
	
	@RequestMapping("/delete/{id}")
	public RedirectView deleteProduct(@PathVariable("id") int pid, 
			HttpServletRequest req){
		this.productDao.remove(pid);
		RedirectView view = new RedirectView();
		view.setUrl(req.getContextPath() + "/");
		return view;
	}
	
	@RequestMapping("/update/{id}")
	public String updateProduct(@PathVariable("id") int pid, Model m){
		Products p = this.productDao.getProduct(pid);
		m.addAttribute("MyProduct", p);
		return "update_product";
	}
	
	@ExceptionHandler({Exception.class})
	public String exceptionHandler(Model m) {
		m.addAttribute("msg", "Bad Request");
		return "error_page";
	}
	
}
