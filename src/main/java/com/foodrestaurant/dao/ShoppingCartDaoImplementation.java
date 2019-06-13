package com.foodrestaurant.dao;

import com.foodrestaurant.model.CartOrder;
import com.foodrestaurant.model.ShoppingCart;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.Map;

@Repository
public class ShoppingCartDaoImplementation implements ShoppingCartDao {
    private Map<String, ShoppingCart> shoppingCartList;

    public ShoppingCartDaoImplementation(){
        shoppingCartList=new HashMap<String,ShoppingCart>();
    }

    @Override
    public ShoppingCart createShoppingCart(ShoppingCart shoppingCart) {
        if(shoppingCartList.keySet().contains(shoppingCart.getShoppingId())){
            throw new IllegalArgumentException(String.format("Shopping Cart Already Exists!"));
        }
        shoppingCartList.put(shoppingCart.getShoppingId(), shoppingCart);
        return shoppingCart;
    }
    @Override
    public ShoppingCart showShoppingCart(String shoppingId){
        return shoppingCartList.get(shoppingId);
    }

    @Override
    public void updateShoppingCart(String shoppingId, ShoppingCart shoppingCart) {
        if(!shoppingCartList.keySet().contains(shoppingId)){
            throw new IllegalArgumentException(String.format("Cart does not exist!"));
        }
       shoppingCartList.put(shoppingId,shoppingCart);
    }

    @Override
    public void removeShoppingCart(String shoppingId) {
        if(shoppingCartList.keySet().contains(shoppingId)){
            throw new IllegalArgumentException(String.format(" Cannot removeShoppingCart,Cart does not exist"));
        }
        shoppingCartList.remove(shoppingId);
    }
}
