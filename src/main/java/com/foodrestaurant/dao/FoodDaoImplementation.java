package com.foodrestaurant.dao;

import com.foodrestaurant.model.Food;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository
@Transactional
public class FoodDaoImplementation implements FoodDao {

@Autowired
    private SessionFactory sessionFactory;

    public void createFoodItems(Food food){
        Session session=sessionFactory.getCurrentSession();
        session.saveOrUpdate(food);
        session.flush();
    }
    public Food getFoodItemsById(String itemId){
        Session session=sessionFactory.getCurrentSession();
        Food food=new Food();
         food =(Food)session.get(Food.class ,itemId);
        session.flush();
        return food;
    }
    public List<Food> getAllFoodItems(){
        Session session=sessionFactory.getCurrentSession();
        Query query=session.createQuery("from Food");
        List<Food> foods =query.list();
        session.flush();
        return foods;
    }
    public void removeFoodItems(String itemId){
        Session session=sessionFactory.getCurrentSession();
        session.delete(getFoodItemsById(itemId));
    }
    public void updateFoodItems(Food food){
        Session session=sessionFactory.getCurrentSession();
        session.saveOrUpdate(food);
        session.flush();
    }
}
