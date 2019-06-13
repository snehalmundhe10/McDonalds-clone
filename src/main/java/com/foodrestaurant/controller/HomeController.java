package com.foodrestaurant.controller;

import com.foodrestaurant.dao.FoodDao;
import com.foodrestaurant.model.Food;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;

@Controller
public class HomeController {

    private Path location;

    @Autowired
    private FoodDao foodDao;

    @RequestMapping("/")   //Mapping the url to the root folder
    public String homeMethod(){
     return "homePage";
    }


    @RequestMapping("/foodItemsList")
    public String getFoodItems(Model dataMap)
    {
        List<Food> foods=new ArrayList<>();
        foods = foodDao.getAllFoodItems();
        dataMap.addAttribute("foods", foods);
        return "foodItemsList";
    }

    @RequestMapping("/foodItemsList/showFoodItems/{foodId}")
     public String viewFoodItems(@PathVariable String foodId, Model dataMap) throws IOException {
        Food food= new Food();
        food=foodDao.getFoodItemsById(foodId);
        dataMap.addAttribute(food);
        return "showFoodItems";
    }


    @RequestMapping("/administrator")
    public String administratorPage(){
        return "administrator";
    }


    @RequestMapping("/administrator/foodInventory")
    public String foodInventory(Model dataMap){
      List<Food>foods=new ArrayList<>();
      foods=foodDao.getAllFoodItems();

     dataMap.addAttribute("foods", foods);
     return "foodInventory";
    }


    @RequestMapping("administrator/foodInventory/createFoodItems")
    public String createFood(Model dataMap){
        Food food =new Food();
        food.setFoodCategory("Burgers");
        dataMap.addAttribute("food", food);
        return "createFoodItems";
    }


    @RequestMapping(value = "administrator/foodInventory/createFoodItems", method = RequestMethod.POST)
    public String createFoodItemsPostMethod(@Valid @ModelAttribute("food") Food food, BindingResult bind, HttpServletRequest request){
       if(bind.hasErrors()){
           return "createFoodItems";
       }
        foodDao.createFoodItems(food);
        MultipartFile foodImage = food.getFoodImage();
        HttpSession session=request.getSession();
        ServletContext context=session.getServletContext();
        String realPath=context.getRealPath("/");
        String path="\\WEB-INF\\resources\\images\\";
        location = Paths.get(realPath+path+ food.getFoodId()+".png");
        if(foodImage != null){
          try{
              foodImage.transferTo(new File(location.toString()));
          }
          catch(Exception except){
              except.printStackTrace();
              throw new RuntimeException("Food Image Saving Failed", except);
          }
        }
       return "redirect:/administrator/foodInventory" ;
    }

    @RequestMapping("administrator/foodInventory/removeFoodItems/{foodId}")
    public String removeFoodItems(@PathVariable String foodId, Model dataMap, HttpServletRequest request){
        HttpSession session=request.getSession();
        ServletContext context=session.getServletContext();
        String realPath=context.getRealPath("/");
        String path="\\WEB-INF\\resources\\images\\";
        location = Paths.get(realPath+path+foodId+".png");
        if(Files.exists(location)){
            try{
                Files.delete(location);
            }
            catch(IOException except){
                except.printStackTrace();
            }
        }
        foodDao.removeFoodItems(foodId);
        return "redirect:/administrator/foodInventory";
    }

    @RequestMapping("/administrator/foodInventory/updateFoodItems/{foodId}")
    public String updateFoodItems(@PathVariable("foodId") String foodId, Model dataMap){
    Food food = foodDao.getFoodItemsById(foodId);
    dataMap.addAttribute(food);
    return "updateFoodItems";
    }

    @RequestMapping(value = "/administrator/foodInventory/updateFoodItems", method = RequestMethod.POST)
    public String updateFoodItemsPostMethod(@Valid@ModelAttribute("food") Food food, BindingResult bind, Model dataMap, HttpServletRequest request) {
        if(bind.hasErrors()){
            return "updateFoodItems";
        }
        MultipartFile foodImage = food.getFoodImage();
         HttpSession session=request.getSession();
         ServletContext context=session.getServletContext();
         String realPath=context.getRealPath("/");
        String path="\\WEB-INF\\resources\\images\\";
         location =Paths.get(realPath+path+ food.getFoodId()+".png");
        if(foodImage != null) {
            try {
                foodImage.transferTo(new File(location.toString()));
            }
            catch(Exception ex){
                throw new RuntimeException("Food image couldn't be saved!");
            }
        }
        foodDao.updateFoodItems(food);
        return "redirect:/administrator/foodInventory";
    }
}
