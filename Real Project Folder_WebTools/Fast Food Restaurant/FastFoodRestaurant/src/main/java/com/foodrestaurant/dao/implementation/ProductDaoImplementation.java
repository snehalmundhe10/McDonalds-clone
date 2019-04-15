package com.foodrestaurant.dao.implementation;

import com.foodrestaurant.dao.ProductDao;
import com.foodrestaurant.model.Product;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository
@Transactional
public class ProductDaoImplementation implements ProductDao {

@Autowired
    private SessionFactory sessionFactory;

    public void addProduct(Product product){
        Session session=sessionFactory.getCurrentSession();
        session.saveOrUpdate(product);
        session.flush();
    }
    public Product getProductById(String id){
        Session session=sessionFactory.getCurrentSession();
        Product product=(Product)session.get(Product.class ,id);
        session.flush();
        return product;
    }
    public List<Product> getAllProducts(){
        Session session=sessionFactory.getCurrentSession();
        //This query will return all the products from the product Table
        Query query=session.createQuery("from Product");
        //This list refers to the queried result
        List<Product> products=query.list();
        session.flush();
        return products;
    }
    public void deleteProduct(String id){
        Session session=sessionFactory.getCurrentSession();
        session.delete(getProductById(id));
    }
}
