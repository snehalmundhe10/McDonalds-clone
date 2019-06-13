package com.foodrestaurant.model;

import java.util.HashMap;
import java.util.Map;

public class ShoppingCart {

    private String shoppingId;
    private Map<String, CartOrder> orders;
    private double estimatedTotal;

    private ShoppingCart(){
        orders=new HashMap<String, CartOrder>();
        estimatedTotal=0;
    }
    public ShoppingCart(String shoppingId){
//        this();
        this.shoppingId=shoppingId;

    }

    public String getShoppingId() {
        return shoppingId;
    }

    public void setShoppingId(String shoppingId) {
        this.shoppingId = shoppingId;
    }

    public Map<String, CartOrder> getOrders() {
        return orders;
    }

    public void setOrders(Map<String, CartOrder> orders) {
        this.orders = orders;
    }

    public double getEstimatedTotal() {
        return estimatedTotal;
    }

    public void setEstimatedTotal(double estimatedTotal) {
        this.estimatedTotal = estimatedTotal;
    }

    public void calculateEstimatedCost(){
        estimatedTotal=0;
        for(CartOrder cartOrder : orders.values()){
            estimatedTotal=estimatedTotal+cartOrder.getFoodPrice();
        }
    }

    public void pushToShoppingCart(CartOrder order){
     String cartOrderId=order.getFood().getFoodId();
     if(orders.containsKey(cartOrderId)){
         CartOrder currentOrder=orders.get(cartOrderId);
         currentOrder.setFoodPrice(currentOrder.getFoodPrice()+order.getFoodQuantity());
         orders.put(cartOrderId,currentOrder);
     }
     else{
         orders.put(cartOrderId, order);
     }

      calculateEstimatedCost();
    }
    public void removeShoppingCartOrder(CartOrder order){
        String cartOrderId=order.getFood().getFoodId();
        orders.remove(cartOrderId);
        calculateEstimatedCost();
    }
}

