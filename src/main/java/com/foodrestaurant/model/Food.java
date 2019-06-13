package com.foodrestaurant.model;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;


import javax.persistence.*;
import javax.validation.constraints.Min;

@Entity
public class Food {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private String foodId;
    @NotEmpty(message = "The food Item name must not be a null!")
    private String foodName;
    private String foodCategory;
    @NotEmpty(message = "This field shouldn't be empty!")
    private String foodDescription;
    @Min(value=0, message="The food item price should not be less than zero!")
    private double foodPrice;
    @Min(value = 0, message = "The food serving should not be less than zero!")
    private String foodServing;
    @NotEmpty(message = "The food Item details must not be a null!")
    private String foodDetails;

    @Transient
    private MultipartFile foodImage;

    public String getFoodDetails() {
        return foodDetails;
    }

    public void setFoodDetails(String foodDetails) {
        this.foodDetails = foodDetails;
    }

    public String getFoodId() {
        return foodId;
    }

    public void setFoodId(String foodId) {
        this.foodId = foodId;
    }

    public String getFoodName() {
        return foodName;
    }

    public void setFoodName(String foodName) {
        this.foodName = foodName;
    }

    public String getFoodCategory() {
        return foodCategory;
    }

    public void setFoodCategory(String foodCategory) {
        this.foodCategory = foodCategory;
    }

    public String getFoodDescription() {
        return foodDescription;
    }

    public void setFoodDescription(String foodDescription) {
        this.foodDescription = foodDescription;
    }

    public double getFoodPrice() {
        return foodPrice;
    }

    public void setFoodPrice(double foodPrice) {
        this.foodPrice = foodPrice;
    }

    public String getFoodServing() {
        return foodServing;
    }

    public void setFoodServing(String foodServing) {
        this.foodServing = foodServing;
    }

    public MultipartFile getFoodImage() {
        return foodImage;
    }

    public void setFoodImage(MultipartFile foodImage) {
        this.foodImage = foodImage;
    }
}
