package com.foodrestaurant.dao;

import com.foodrestaurant.model.Food;

import java.util.List;

public interface FoodDao {

    void createFoodItems(Food food);
    Food getFoodItemsById(String id);
    List<Food> getAllFoodItems();
    void updateFoodItems(Food food);
    void removeFoodItems(String id);

}
