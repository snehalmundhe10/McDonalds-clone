package com.foodrestaurant.dao;

import com.foodrestaurant.model.CartOrder;
import com.foodrestaurant.model.ShoppingCart;
import org.springframework.stereotype.Repository;

@Repository
public interface ShoppingCartDao {
    ShoppingCart createShoppingCart(ShoppingCart shoppingCart);
    ShoppingCart showShoppingCart(String shoppingId);
    void updateShoppingCart(String shoppingId, ShoppingCart shoppingCart);
    void removeShoppingCart(String shoppingId);


}
