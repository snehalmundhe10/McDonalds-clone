package com.foodrestaurant.model;

public class CartOrder {
    private Food food;
    private double foodPrice;
    private int foodQuantity;

    public CartOrder(){
    }

    public CartOrder(Food food){
                this.food = food;
                this.foodPrice= food.getFoodPrice();
                this.foodQuantity=1;
    }

    public Food getFood() {
        return food;
    }

    public void setFood(Food food) {
        this.food = food;
    }

    public double getFoodPrice() {
        return foodPrice;
    }

    public void setFoodPrice(double foodPrice) {
        this.foodPrice = foodPrice;
    }

    public int getFoodQuantity() {
        return foodQuantity;
    }

    public void setFoodQuantity(int foodQuantity) {
        this.foodQuantity = foodQuantity;
    }
}
